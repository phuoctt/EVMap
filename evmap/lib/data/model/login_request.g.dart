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

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone_number', instance.phone_number);
  writeNotNull('password', instance.password);
  writeNotNull('first_name', instance.first_name);
  writeNotNull('last_name', instance.last_name);
  writeNotNull('email', instance.email);
  writeNotNull('device_id', instance.device_id);
  // writeNotNull('balance', 12);

  return val;
}
