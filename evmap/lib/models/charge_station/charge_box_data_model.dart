// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:rabbitevc/models/charge_station/charge_model.dart';

part 'charge_box_data_model.g.dart';

@JsonSerializable()
class ChargeBoxDataModel {
  String? charge_box_id;
  String? event_name;
  ChargeDataModel? event_data;

  ChargeBoxDataModel({
    this.charge_box_id,
    this.event_name,
    this.event_data
  });



  Map<String, dynamic> toJson() => _$ChargeBoxDataModelToJson(this);

  factory ChargeBoxDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeBoxDataModelFromJson(json);
}
