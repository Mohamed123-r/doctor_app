
import 'package:doctor_app/features/logIn/data/models/login_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'update_profile_response.g.dart';
@JsonSerializable()
class UpdateProfileResponse {
  final String message;
  final bool status;
  final int code;


  final ProfileData data;
  UpdateProfileResponse({
    required this.message,
    required this.status,
    required this.code,
    required this.data,
  });
  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateProfileResponseToJson(this);


}


@JsonSerializable()
class ProfileData {
  final String name;
  final String phone;
  final String gender
;
  final String email;

  ProfileData({
    required this.name,
    required this.phone,
    required this.gender,
    required this.email,
  });
  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);



}
