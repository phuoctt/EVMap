// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SlotModel _$SlotModelFromJson(Map json) => SlotModel(
      chargeBoxId: json['charge_box_id'] as String?,
      connectors: (json['connectors'] as List<dynamic>?)
          ?.map((e) =>
              ConnectorSlotModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$SlotModelToJson(SlotModel instance) => <String, dynamic>{
      if (instance.chargeBoxId case final value?) 'charge_box_id': value,
      if (instance.connectors case final value?) 'connectors': value,
    };

ConnectorSlotModel _$ConnectorSlotModelFromJson(Map json) => ConnectorSlotModel(
      connectorId: (json['connector_id'] as num?)?.toInt(),
      slots: (json['slots'] as List<dynamic>?)
          ?.map((e) =>
              SlotDataModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$ConnectorSlotModelToJson(ConnectorSlotModel instance) =>
    <String, dynamic>{
      if (instance.connectorId case final value?) 'connector_id': value,
      if (instance.slots case final value?) 'slots': value,
    };

SlotDataModel _$SlotDataModelFromJson(Map json) => SlotDataModel(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      startDatetime: json['start_datetime'] == null
          ? null
          : DateTime.parse(json['start_datetime'] as String),
      expiryDatetime: json['expiry_datetime'] == null
          ? null
          : DateTime.parse(json['expiry_datetime'] as String),
    );

Map<String, dynamic> _$SlotDataModelToJson(SlotDataModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.userId case final value?) 'user_id': value,
      if (instance.startDatetime?.toIso8601String() case final value?)
        'start_datetime': value,
      if (instance.expiryDatetime?.toIso8601String() case final value?)
        'expiry_datetime': value,
    };
