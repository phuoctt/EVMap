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

Map<String, dynamic> _$SlotModelToJson(SlotModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('charge_box_id', instance.chargeBoxId);
  writeNotNull('connectors', instance.connectors);
  return val;
}

ConnectorSlotModel _$ConnectorSlotModelFromJson(Map json) => ConnectorSlotModel(
      connectorId: json['connector_id'] as int?,
      slots: (json['slots'] as List<dynamic>?)
          ?.map((e) =>
              SlotDataModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$ConnectorSlotModelToJson(ConnectorSlotModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('connector_id', instance.connectorId);
  writeNotNull('slots', instance.slots);
  return val;
}

SlotDataModel _$SlotDataModelFromJson(Map json) => SlotDataModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      startDatetime: json['start_datetime'] == null
          ? null
          : DateTime.parse(json['start_datetime'] as String),
      expiryDatetime: json['expiry_datetime'] == null
          ? null
          : DateTime.parse(json['expiry_datetime'] as String),
    );

Map<String, dynamic> _$SlotDataModelToJson(SlotDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.userId);
  writeNotNull('start_datetime', instance.startDatetime?.toIso8601String());
  writeNotNull('expiry_datetime', instance.expiryDatetime?.toIso8601String());
  return val;
}
