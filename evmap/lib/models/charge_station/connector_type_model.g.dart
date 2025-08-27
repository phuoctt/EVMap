// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connector_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectorTypeModel _$ConnectorTypeModelFromJson(Map json) => ConnectorTypeModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$ConnectorTypeModelToJson(ConnectorTypeModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.imageUrl case final value?) 'image_url': value,
    };
