import 'package:doctor_app/core/networking/api_error_model.dart';
import 'package:doctor_app/features/search/presentation/search_screen/logic/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_app/core/networking/api_result.dart';

import '../../../data/repository/doctor_search_repo.dart';

class SearchCubit extends Cubit<SearchState> {
  final DoctorRepo doctorRepo;

  SearchCubit({required this.doctorRepo}) : super(const SearchState.initial());

  Future<void> search(String query) async {
    emit(const SearchState.loading());

    final result = await doctorRepo.searchDoctors(query);

    result.when(
      success: (response) {
        emit(SearchState.loaded(doctors: response.data));
      },
      failure: (error) {
        emit(
          SearchState.error(
            message:
                error.message ??
                'An unexpected error occurred during the search.',
          ),
        );
      },
    );
  }
}
