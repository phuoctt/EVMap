// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'user_point_model.g.dart';

@JsonSerializable()
class UserPointModel {
  num? user_id;
  num? point;

  UserPointModel({
    this.user_id,
    this.point
  });

  Map<String, dynamic> toJson() => _$UserPointModelToJson(this);

  factory UserPointModel.fromJson(Map<String, dynamic> json) =>
      _$UserPointModelFromJson(json);
}
