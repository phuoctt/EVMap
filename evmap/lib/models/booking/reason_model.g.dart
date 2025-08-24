// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReasonModel _$ReasonModelFromJson(Map json) => ReasonModel(
      id: json['id'] as int?,
      sort: json['sort'] as int?,
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

Map<String, dynamic> _$ReasonModelToJson(ReasonModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('sort', instance.sort);
  writeNotNull('reason_vi', instance.reasonVi);
  writeNotNull('reason_en', instance.reasonEn);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('created_user', instance.createdUser);
  writeNotNull('updated_user', instance.updatedUser);
  return val;
}
