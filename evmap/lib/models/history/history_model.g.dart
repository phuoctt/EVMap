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

Map<String, dynamic> _$HistoryModelToJson(HistoryModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.user_id case final value?) 'user_id': value,
      if (instance.point_value case final value?) 'point_value': value,
      if (instance.point_datetime?.toIso8601String() case final value?)
        'point_datetime': value,
      if (instance.extra_type case final value?) 'extra_type': value,
      if (instance.extra_id case final value?) 'extra_id': value,
      if (instance.description case final value?) 'description': value,
    };
