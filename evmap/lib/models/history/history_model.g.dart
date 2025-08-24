// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryModel _$HistoryModelFromJson(Map json) => HistoryModel()
  ..id = json['id'] as num?
  ..user_id = json['user_id'] as num?
  ..point_value = json['point_value'] as num?
  ..point_datetime = json['point_datetime'] == null
      ? null
      : DateTime.parse(json['point_datetime'] as String)
  ..extra_type = json['extra_type'] as String?
  ..extra_id = json['extra_id'] as num?
  ..description = json['description'] as String?;

Map<String, dynamic> _$HistoryModelToJson(HistoryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.user_id);
  writeNotNull('point_value', instance.point_value);
  writeNotNull('point_datetime', instance.point_datetime?.toIso8601String());
  writeNotNull('extra_type', instance.extra_type);
  writeNotNull('extra_id', instance.extra_id);
  writeNotNull('description', instance.description);
  return val;
}
