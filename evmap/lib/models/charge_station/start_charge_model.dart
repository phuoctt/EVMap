// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'start_charge_model.g.dart';

@JsonSerializable()
class StartChargeDataModel {
  num? transaction_id;

  StartChargeDataModel(this.transaction_id);

  Map<String, dynamic> toJson() => _$StartChargeDataModelToJson(this);

  factory StartChargeDataModel.fromJson(Map<String, dynamic> json) =>
      _$StartChargeDataModelFromJson(json);
}
