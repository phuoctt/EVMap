// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionResponse _$DirectionResponseFromJson(Map json) => DirectionResponse(
      code: json['code'] as String?,
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) =>
              RouteDirectionModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$DirectionResponseToJson(DirectionResponse instance) =>
    <String, dynamic>{
      if (instance.code case final value?) 'code': value,
      if (instance.routes case final value?) 'routes': value,
    };

RouteDirectionModel _$RouteDirectionModelFromJson(Map json) =>
    RouteDirectionModel(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(
              Map<String, dynamic>.from(json['geometry'] as Map)),
      distance: (json['distance'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toDouble(),
      weightName: json['weight_name'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RouteDirectionModelToJson(
        RouteDirectionModel instance) =>
    <String, dynamic>{
      if (instance.geometry case final value?) 'geometry': value,
      if (instance.distance case final value?) 'distance': value,
      if (instance.duration case final value?) 'duration': value,
      if (instance.weightName case final value?) 'weight_name': value,
      if (instance.weight case final value?) 'weight': value,
    };

Geometry _$GeometryFromJson(Map json) => Geometry(
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      if (instance.coordinates case final value?) 'coordinates': value,
    };
