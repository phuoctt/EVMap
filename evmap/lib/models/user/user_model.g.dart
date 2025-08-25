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

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.steve_user_id case final value?) 'steve_user_id': value,
      if (instance.email case final value?) 'email': value,
      if (instance.username case final value?) 'username': value,
      if (instance.phoneNumber case final value?) 'phoneNumber': value,
      if (instance.firstName case final value?) 'firstName': value,
      if (instance.lastName case final value?) 'lastName': value,
      if (instance.full_name case final value?) 'full_name': value,
      if (instance.token case final value?) 'token': value,
      if (instance.avatar_url case final value?) 'avatar_url': value,
      if (instance.address case final value?) 'address': value,
    };
