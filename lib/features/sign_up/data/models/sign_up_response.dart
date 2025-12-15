import 'package:doctor_app/features/logIn/data/models/login_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final String message;
  final bool status;
  final int code;

  final UserData data;

  SignUpResponse({
    required this.message,
    required this.status,
    required this.code,
    required this.data,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}
