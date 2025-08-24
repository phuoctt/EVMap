// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map json) => UserModel(
      id: json['id'] as num?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      full_name: json['full_name'] as String?,
      token: json['token'] as String?,
      avatar_url: json['avatar_url'] as String?,
      address: json['address'] as String?,
      steve_user_id: json['steve_user_id'] as num?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('steve_user_id', instance.steve_user_id);
  writeNotNull('email', instance.email);
  writeNotNull('username', instance.username);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('full_name', instance.full_name);
  writeNotNull('token', instance.token);
  writeNotNull('avatar_url', instance.avatar_url);
  writeNotNull('address', instance.address);
  return val;
}
