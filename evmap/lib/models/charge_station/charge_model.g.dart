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

Map<String, dynamic> _$ChargeDataModelToJson(ChargeDataModel instance) =>
    <String, dynamic>{
      if (instance.connectorId case final value?) 'connectorId': value,
      if (instance.status case final value?) 'status': value,
      if (instance.errorCode case final value?) 'errorCode': value,
      if (instance.transactionId case final value?) 'transactionId': value,
      if (instance.meta case final value?) 'meta': value,
    };

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

Map<String, dynamic> _$ChargeMetaModelToJson(ChargeMetaModel instance) =>
    <String, dynamic>{
      if (instance.temperature case final value?) 'temperature': value,
      if (instance.energy_active_import_register case final value?)
        'energy_active_import_register': value,
      if (instance.power_active_import case final value?)
        'power_active_import': value,
      if (instance.soc case final value?) 'soc': value,
    };

ChargeMetaDataModel _$ChargeMetaDataModelFromJson(Map json) =>
    ChargeMetaDataModel()
      ..measurand = json['measurand'] as String?
      ..value = json['value'] as String?
      ..unit = json['unit'] as String?;

Map<String, dynamic> _$ChargeMetaDataModelToJson(
        ChargeMetaDataModel instance) =>
    <String, dynamic>{
      if (instance.measurand case final value?) 'measurand': value,
      if (instance.value case final value?) 'value': value,
      if (instance.unit case final value?) 'unit': value,
    };
