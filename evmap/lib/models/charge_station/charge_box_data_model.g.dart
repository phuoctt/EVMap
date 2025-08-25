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

Map<String, dynamic> _$ChargeBoxDataModelToJson(ChargeBoxDataModel instance) =>
    <String, dynamic>{
      if (instance.charge_box_id case final value?) 'charge_box_id': value,
      if (instance.event_name case final value?) 'event_name': value,
      if (instance.event_data case final value?) 'event_data': value,
    };
