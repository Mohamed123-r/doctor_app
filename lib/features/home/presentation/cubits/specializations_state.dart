import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'specializations_state.freezed.dart';
@freezed
 class SpecializationsState with _$SpecializationsState {
  const factory SpecializationsState.initial() = _Initial;
  const factory SpecializationsState.loading() = SpecializationsLoading;
  const factory SpecializationsState.loaded({
    required SpecializationsResponseModel specializationsResponseModel,
  }) = SpecializationsLoaded;
  const factory SpecializationsState.error({
    required String message,
  }) = SpecializationsError;
}


