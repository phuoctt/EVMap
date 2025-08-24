// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_box_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeBoxDataModel _$ChargeBoxDataModelFromJson(Map json) => ChargeBoxDataModel(
      charge_box_id: json['charge_box_id'] as String?,
      event_name: json['event_name'] as String?,
      event_data: json['event_data'] == null
          ? null
          : ChargeDataModel.fromJson(
              Map<String, dynamic>.from(json['event_data'] as Map)),
    );

Map<String, dynamic> _$ChargeBoxDataModelToJson(ChargeBoxDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('charge_box_id', instance.charge_box_id);
  writeNotNull('event_name', instance.event_name);
  writeNotNull('event_data', instance.event_data);
  return val;
}
