import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import '../model/doctor_search_response.dart';

class DoctorRepo {
  final ApiService apiService;
  DoctorRepo({required this.apiService});

  Future<ApiResult<DoctorSearchResponse>> searchDoctors(String name) async {
    try {
      final response = await apiService.searchDoctors(name);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}