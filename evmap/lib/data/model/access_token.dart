// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'access_token.g.dart';

@JsonSerializable()
class AccessTokenResponse {
  @JsonKey(name: "access_token")
  AccessToken? accessToken;

  AccessTokenResponse({
    this.accessToken,
  });

  AccessTokenResponse copyWith({
    AccessToken? accessToken,
  }) =>
      AccessTokenResponse(
        accessToken: accessToken ?? this.accessToken,
      );

  factory AccessTokenResponse.fromJson(Map<String, dynamic> json) => _$AccessTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccessTokenResponseToJson(this);
}

@JsonSerializable()
class AccessToken {
  @JsonKey(name: "token")
  String? token;
  @JsonKey(name: "ttl")
  int? ttl;

  AccessToken({
    this.token,
    this.ttl,
  });

  AccessToken copyWith({
    String? token,
    int? ttl,
  }) =>
      AccessToken(
        token: token ?? this.token,
        ttl: ttl ?? this.ttl,
      );

  factory AccessToken.fromJson(Map<String, dynamic> json) => _$AccessTokenFromJson(json);

  Map<String, dynamic> toJson() => _$AccessTokenToJson(this);
}
