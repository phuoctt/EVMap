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

Map<String, dynamic> _$DirectionResponseToJson(DirectionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('routes', instance.routes);
  return val;
}

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

Map<String, dynamic> _$RouteDirectionModelToJson(RouteDirectionModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('geometry', instance.geometry);
  writeNotNull('distance', instance.distance);
  writeNotNull('duration', instance.duration);
  writeNotNull('weight_name', instance.weightName);
  writeNotNull('weight', instance.weight);
  return val;
}

Geometry _$GeometryFromJson(Map json) => Geometry(
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('coordinates', instance.coordinates);
  return val;
}
