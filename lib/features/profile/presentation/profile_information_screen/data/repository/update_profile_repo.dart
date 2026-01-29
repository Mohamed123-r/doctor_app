import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/features/profile/presentation/profile_information_screen/data/model/update_profile_request_body.dart';
import 'package:doctor_app/features/profile/presentation/profile_information_screen/data/model/update_profile_response.dart';

class UpdateProfileRepo {
  final ApiService _apiService;

  UpdateProfileRepo(this._apiService);

  Future<ApiResult<UpdateProfileResponse>> updateProfileData(
    UpdateProfileRequestBody updateProfileRequestBody,
  ) async {
    try {
      final response = await _apiService.updateProfile(
        updateProfileRequestBody,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
