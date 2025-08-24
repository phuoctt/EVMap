// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'reason_model.g.dart';

@JsonSerializable()
class ReasonModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "sort")
  int? sort;
  @JsonKey(name: "reason_vi")
  String? reasonVi;
  @JsonKey(name: "reason_en")
  String? reasonEn;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "created_user")
  String? createdUser;
  @JsonKey(name: "updated_user")
  String? updatedUser;

  ReasonModel({
    this.id,
    this.sort,
    this.reasonVi,
    this.reasonEn,
    this.createdAt,
    this.updatedAt,
    this.createdUser,
    this.updatedUser,
  });

  ReasonModel copyWith({
    int? id,
    int? sort,
    String? reasonVi,
    String? reasonEn,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdUser,
    String? updatedUser,
  }) =>
      ReasonModel(
        id: id ?? this.id,
        sort: sort ?? this.sort,
        reasonVi: reasonVi ?? this.reasonVi,
        reasonEn: reasonEn ?? this.reasonEn,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdUser: createdUser ?? this.createdUser,
        updatedUser: updatedUser ?? this.updatedUser,
      );

  factory ReasonModel.fromJson(Map<String, dynamic> json) => _$ReasonModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReasonModelToJson(this);
}