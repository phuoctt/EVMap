// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeTypeModel _$ChargeTypeModelFromJson(Map json) => ChargeTypeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ChargeTypeModelToJson(ChargeTypeModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}
