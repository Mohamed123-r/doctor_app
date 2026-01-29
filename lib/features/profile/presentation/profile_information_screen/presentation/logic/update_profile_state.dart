
import 'package:doctor_app/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_state.freezed.dart';

@freezed
class UpdateProfileState<T> with _$UpdateProfileState<T> {
  const factory UpdateProfileState.initial() = _Initial;
  const factory UpdateProfileState.loading() = Loading;
  const factory UpdateProfileState.success(T data) = Success<T>;
  const factory UpdateProfileState.error({required ApiErrorModel apiErrorModel}) = Error;
}
