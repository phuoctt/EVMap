// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_charge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartChargeDataModel _$StartChargeDataModelFromJson(Map json) =>
    StartChargeDataModel(
      json['transaction_id'] as num?,
    );

Map<String, dynamic> _$StartChargeDataModelToJson(
    StartChargeDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transaction_id', instance.transaction_id);
  return val;
}
