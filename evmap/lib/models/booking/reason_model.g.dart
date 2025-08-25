// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReasonModel _$ReasonModelFromJson(Map json) => ReasonModel(
      id: (json['id'] as num?)?.toInt(),
      sort: (json['sort'] as num?)?.toInt(),
      reasonVi: json['reason_vi'] as String?,
      reasonEn: json['reason_en'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdUser: json['created_user'] as String?,
      updatedUser: json['updated_user'] as String?,
    );

Map<String, dynamic> _$ReasonModelToJson(ReasonModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.sort case final value?) 'sort': value,
      if (instance.reasonVi case final value?) 'reason_vi': value,
      if (instance.reasonEn case final value?) 'reason_en': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
      if (instance.createdUser case final value?) 'created_user': value,
      if (instance.updatedUser case final value?) 'updated_user': value,
    };
