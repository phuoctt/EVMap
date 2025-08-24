// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPointModel _$UserPointModelFromJson(Map json) => UserPointModel(
      user_id: json['user_id'] as num?,
      point: json['point'] as num?,
    );

Map<String, dynamic> _$UserPointModelToJson(UserPointModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.user_id);
  writeNotNull('point', instance.point);
  return val;
}
