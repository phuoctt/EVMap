import 'package:freezed_annotation/freezed_annotation.dart';

part 'direction_model.g.dart';

@JsonSerializable()
class DirectionResponse {
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "routes")
  List<RouteDirectionModel>? routes;

  DirectionResponse({
    this.code,
    this.routes,
  });

  DirectionResponse copyWith({
    String? code,
    List<RouteDirectionModel>? routes,
  }) =>
      DirectionResponse(
        code: code ?? this.code,
        routes: routes ?? this.routes,
      );

  factory DirectionResponse.fromJson(Map<String, dynamic> json) =>
      _$DirectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionResponseToJson(this);
}

@JsonSerializable()
class RouteDirectionModel {
  @JsonKey(name: "geometry")
  Geometry? geometry;
  @JsonKey(name: "distance")
  double? distance;
  @JsonKey(name: "duration")
  double? duration;
  @JsonKey(name: "weight_name")
  String? weightName;
  @JsonKey(name: "weight")
  double? weight;

  RouteDirectionModel({
    this.geometry,
    this.distance,
    this.duration,
    this.weightName,
    this.weight,
  });

  RouteDirectionModel copyWith({
    Geometry? geometry,
    double? distance,
    double? duration,
    String? weightName,
    double? weight,
  }) =>
      RouteDirectionModel(
        geometry: geometry ?? this.geometry,
        distance: distance ?? this.distance,
        duration: duration ?? this.duration,
        weightName: weightName ?? this.weightName,
        weight: weight ?? this.weight,
      );

  factory RouteDirectionModel.fromJson(Map<String, dynamic> json) => _$RouteDirectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$RouteDirectionModelToJson(this);
}

@JsonSerializable()
class Geometry {
  @JsonKey(name: "coordinates")
  List<List<double>>? coordinates;

  Geometry({
    this.coordinates,
  });

  Geometry copyWith({
    List<List<double>>? coordinates,
    Type? type,
  }) =>
      Geometry(
        coordinates: coordinates ?? this.coordinates,
      );

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}
