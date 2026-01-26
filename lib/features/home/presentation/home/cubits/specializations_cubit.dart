import 'package:doctor_app/core/networking/api_error_model.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/home/data/repo/specializations_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'specializations_state.dart';

class SpecializationsCubit extends Cubit<SpecializationsState> {
  final SpecializationsRepo specializationsRepo;

  SpecializationsCubit({required this.specializationsRepo})
    : super(const SpecializationsState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void fetchSpecializations() async {
    emit(const SpecializationsState.loading());
    final response = await specializationsRepo.getSpecializations();
    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];

        // getting the doctors list for the first specialization by default.
        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(
          SpecializationsState.loaded(
            specializationDataList:
                specializationsResponseModel.specializationDataList,
          ),
        );
      },
      failure: (errorHandler) {
        emit(SpecializationsState.error(apiErrorModel: errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList = getDoctorsListBySpecializationId(
      specializationId,
    );

    if (doctorsList != null && doctorsList.isNotEmpty) {
      emit(SpecializationsState.doctorLoaded(doctorsList: doctorsList));
    } else {
      emit(
        SpecializationsState.doctorError(
          apiErrorModel: ApiErrorModel(
            message: 'No doctors found for this specialization',
            code: 404,
          ),
        ),
      );
    }
  }

  /// returns the list of doctors based on the specialization id
  List<Doctors?>? getDoctorsListBySpecializationId(int? specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
