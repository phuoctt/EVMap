// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'history_model.g.dart';

@JsonSerializable()
class HistoryModel {
  num? id;
  num? user_id;
  num? point_value;
  DateTime? point_datetime;
  String? extra_type;
  num? extra_id;
  String? description;

  HistoryModel();

  Map<String, dynamic> toJson() => _$HistoryModelToJson(this);

  factory HistoryModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryModelFromJson(json);
}
