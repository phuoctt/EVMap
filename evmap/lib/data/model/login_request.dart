// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  String? phone_number;
  String? password;
  String? first_name;
  String? last_name;
  String? email;
  String? device_id;


  LoginRequest({
    this.phone_number,
    this.password,
    this.first_name,
    this.last_name,
    this.email,
    this.device_id,
  });

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
