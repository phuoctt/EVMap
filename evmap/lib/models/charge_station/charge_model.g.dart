// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeDataModel _$ChargeDataModelFromJson(Map json) => ChargeDataModel(
      connectorId: json['connectorId'] as num?,
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      transactionId: json['transactionId'] as num?,
      meta: json['meta'] == null
          ? null
          : ChargeMetaModel.fromJson(
              Map<String, dynamic>.from(json['meta'] as Map)),
    );

Map<String, dynamic> _$ChargeDataModelToJson(ChargeDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('connectorId', instance.connectorId);
  writeNotNull('status', instance.status);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('transactionId', instance.transactionId);
  writeNotNull('meta', instance.meta);
  return val;
}

ChargeMetaModel _$ChargeMetaModelFromJson(Map json) => ChargeMetaModel()
  ..temperature = json['temperature'] == null
      ? null
      : ChargeMetaDataModel.fromJson(
          Map<String, dynamic>.from(json['temperature'] as Map))
  ..energy_active_import_register =
      json['energy_active_import_register'] == null
          ? null
          : ChargeMetaDataModel.fromJson(Map<String, dynamic>.from(
              json['energy_active_import_register'] as Map))
  ..power_active_import = json['power_active_import'] == null
      ? null
      : ChargeMetaDataModel.fromJson(
          Map<String, dynamic>.from(json['power_active_import'] as Map))
  ..soc = json['soc'] == null
      ? null
      : ChargeMetaDataModel.fromJson(
          Map<String, dynamic>.from(json['soc'] as Map));

Map<String, dynamic> _$ChargeMetaModelToJson(ChargeMetaModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('temperature', instance.temperature);
  writeNotNull(
      'energy_active_import_register', instance.energy_active_import_register);
  writeNotNull('power_active_import', instance.power_active_import);
  writeNotNull('soc', instance.soc);
  return val;
}

ChargeMetaDataModel _$ChargeMetaDataModelFromJson(Map json) =>
    ChargeMetaDataModel()
      ..measurand = json['measurand'] as String?
      ..value = json['value'] as String?
      ..unit = json['unit'] as String?;

Map<String, dynamic> _$ChargeMetaDataModelToJson(ChargeMetaDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('measurand', instance.measurand);
  writeNotNull('value', instance.value);
  writeNotNull('unit', instance.unit);
  return val;
}
