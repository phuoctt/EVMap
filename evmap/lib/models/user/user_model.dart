// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  num? id;
  num? steve_user_id;
  String? email;
  String? username;
  String? phoneNumber;
  String? firstName;
  String? lastName;
  String? full_name;
  String? token;
  String? avatar_url;
  String? address;

  UserModel({
    this.id,
    this.email,
    this.username,
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.full_name,
    this.token,
    this.avatar_url,
    this.address,
    this.steve_user_id
  });

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
