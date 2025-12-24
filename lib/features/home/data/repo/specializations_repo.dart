

import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import '../models/specializations_response_model.dart';


class SpecializationsRepo {
  final ApiService apiService;
  SpecializationsRepo({required this.apiService});
  Future<ApiResult<SpecializationsResponseModel>> getSpecializations() async {
    try {
      final response = await apiService.getSpecializations();
    return ApiResult.success(
        response
    );
    } catch (error) {
      return ApiResult.failure(
          ApiErrorHandler.handle(error)
      );
    }
  }

}