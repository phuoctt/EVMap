// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeTypeModel _$ChargeTypeModelFromJson(Map json) => ChargeTypeModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ChargeTypeModelToJson(ChargeTypeModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
    };
