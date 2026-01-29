
import 'package:json_annotation/json_annotation.dart';
part 'update_profile_request_body.g.dart';
@JsonSerializable()
class UpdateProfileRequestBody {
  final String name;
  final String phone;
  final int gender;
  final String email;
  final String password;
  UpdateProfileRequestBody({
    required this.name,
    required this.phone,
    required this.gender,
    required this.email,
    required this.password,

  });
  factory UpdateProfileRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateProfileRequestBodyToJson(this);


}