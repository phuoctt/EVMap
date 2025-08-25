// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map json) => LoginRequest(
      phone_number: json['phone_number'] as String?,
      password: json['password'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      email: json['email'] as String?,
      device_id: json['device_id'] as String?,
    );

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      if (instance.phone_number case final value?) 'phone_number': value,
      if (instance.password case final value?) 'password': value,
      if (instance.first_name case final value?) 'first_name': value,
      if (instance.last_name case final value?) 'last_name': value,
      if (instance.email case final value?) 'email': value,
      if (instance.device_id case final value?) 'device_id': value,
    };
