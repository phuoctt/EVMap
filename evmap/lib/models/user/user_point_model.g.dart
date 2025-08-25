// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPointModel _$UserPointModelFromJson(Map json) => UserPointModel(
      user_id: json['user_id'] as num?,
      point: json['point'] as num?,
    );

Map<String, dynamic> _$UserPointModelToJson(UserPointModel instance) =>
    <String, dynamic>{
      if (instance.user_id case final value?) 'user_id': value,
      if (instance.point case final value?) 'point': value,
    };
