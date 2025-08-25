// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessTokenResponse _$AccessTokenResponseFromJson(Map json) =>
    AccessTokenResponse(
      accessToken: json['access_token'] == null
          ? null
          : AccessToken.fromJson(
              Map<String, dynamic>.from(json['access_token'] as Map)),
    );

Map<String, dynamic> _$AccessTokenResponseToJson(
        AccessTokenResponse instance) =>
    <String, dynamic>{
      if (instance.accessToken case final value?) 'access_token': value,
    };

AccessToken _$AccessTokenFromJson(Map json) => AccessToken(
      token: json['token'] as String?,
      ttl: (json['ttl'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AccessTokenToJson(AccessToken instance) =>
    <String, dynamic>{
      if (instance.token case final value?) 'token': value,
      if (instance.ttl case final value?) 'ttl': value,
    };
