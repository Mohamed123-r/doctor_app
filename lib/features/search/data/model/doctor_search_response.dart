import 'package:json_annotation/json_annotation.dart';

import '../../../home/data/models/specializations_response_model.dart';

part 'doctor_search_response.g.dart';

@JsonSerializable()
class DoctorSearchResponse {
  final String message;
  final List<Doctors> data;
  final bool status;
  final int code;

  DoctorSearchResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory DoctorSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorSearchResponseToJson(this);
}

