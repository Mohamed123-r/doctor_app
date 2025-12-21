import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/home/presentation/cubits/specializations_state.dart';
import '../../data/repo/specializations_repo.dart';


class SpecializationsCubit extends Cubit<SpecializationsState> {
  final SpecializationsRepo specializationsRepo;
  SpecializationsCubit({required this.specializationsRepo})
      : super(SpecializationsState.initial());

  void fetchSpecializations() async {
    emit(SpecializationsState.loading());

    var response = await specializationsRepo.getSpecializations();
    response.when(
      success: (data) {
        emit(SpecializationsState.loaded(
          specializationsResponseModel: data,
        ));
      },
      failure: (error) {
        emit(SpecializationsState.error(
          message: error.apiErrorModel.message!,
        ));
      },
    );
  }
}
