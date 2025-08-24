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

Map<String, dynamic> _$AccessTokenResponseToJson(AccessTokenResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_token', instance.accessToken);
  return val;
}

AccessToken _$AccessTokenFromJson(Map json) => AccessToken(
      token: json['token'] as String?,
      ttl: json['ttl'] as int?,
    );

Map<String, dynamic> _$AccessTokenToJson(AccessToken instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token);
  writeNotNull('ttl', instance.ttl);
  return val;
}
