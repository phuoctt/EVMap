import 'package:json_annotation/json_annotation.dart';

part 'station_model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Station {
  int? id;
  String? name;
  int? vehicleType;
  int? referenceApp;
  String? referenceId;
  String? address;
  String? description;
  int? status;
  String? latitude;
  String? longitude;
  String? provinceCode;
  int? isPublic;
  int? isDeleted;

  DateTime? createdAt;
  DateTime? updatedAt;

  dynamic? province;
  String? ward;

  List<String>? images;
  List<Service>? services;
  List<dynamic>? reviews;
  List<ChargeBox>? chargeBoxes;

  Station({
    this.id,
    this.name,
    this.vehicleType,
    this.referenceApp,
    this.referenceId,
    this.address,
    this.description,
    this.status,
    this.latitude,
    this.longitude,
    this.provinceCode,
    this.isPublic,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
    this.province,
    this.ward,
    this.images,
    this.services,
    this.reviews,
    this.chargeBoxes,
  });

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);

  Map<String, dynamic> toJson() => _$StationToJson(this);

  double get lat => double.parse(latitude ?? '0.0');

  double get long => double.parse(longitude ?? '0.0');

  String get thumbnail =>
          'https://vinfastnguyenkiem.vn/files/assets/he-thong-tram-sac-tram-doi-pin-vinfast-anh-3_1646272174.jpg';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Service {
  int? id;
  int? stationId;
  int? serviceType;
  int? isFree;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;

  Service({
    this.id,
    this.stationId,
    this.serviceType,
    this.isFree,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ChargeBox {
  int? id;
  int? stationId;
  String? referenceId;
  int? status;
  String? name;
  int? powerKw;
  int? vehicleType;
  DateTime? createdAt;
  DateTime? updatedAt;

  List<Connector>? connectors;
  Station? station;

  ChargeBox({
    this.id,
    this.stationId,
    this.referenceId,
    this.status,
    this.name,
    this.powerKw,
    this.vehicleType,
    this.createdAt,
    this.updatedAt,
    this.connectors,
    this.station,
  });

  factory ChargeBox.fromJson(Map<String, dynamic> json) =>
      _$ChargeBoxFromJson(json);

  Map<String, dynamic> toJson() => _$ChargeBoxToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Connector {
  int? id;
  int? chargeboxId;
  int? connectorType;
  dynamic? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? typeCode;
  int? powerKw;
  Connector({
    this.id,
    this.chargeboxId,
    this.connectorType,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.typeCode,
    this.powerKw,
  });

  factory Connector.fromJson(Map<String, dynamic> json) =>
      _$ConnectorFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectorToJson(this);
}
