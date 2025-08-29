// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Station _$StationFromJson(Map json) => Station(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      vehicleType: (json['vehicle_type'] as num?)?.toInt(),
      referenceApp: (json['reference_app'] as num?)?.toInt(),
      referenceId: json['reference_id'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      status: (json['status'] as num?)?.toInt(),
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      provinceCode: json['province_code'] as String?,
      isPublic: (json['is_public'] as num?)?.toInt(),
      isDeleted: (json['is_deleted'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      province: json['province'],
      ward: json['ward'],
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      reviews: json['reviews'] as List<dynamic>?,
      chargeBoxes: (json['charge_boxes'] as List<dynamic>?)
          ?.map((e) => ChargeBox.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$StationToJson(Station instance) => <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.vehicleType case final value?) 'vehicle_type': value,
      if (instance.referenceApp case final value?) 'reference_app': value,
      if (instance.referenceId case final value?) 'reference_id': value,
      if (instance.address case final value?) 'address': value,
      if (instance.description case final value?) 'description': value,
      if (instance.status case final value?) 'status': value,
      if (instance.latitude case final value?) 'latitude': value,
      if (instance.longitude case final value?) 'longitude': value,
      if (instance.provinceCode case final value?) 'province_code': value,
      if (instance.isPublic case final value?) 'is_public': value,
      if (instance.isDeleted case final value?) 'is_deleted': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
      if (instance.province case final value?) 'province': value,
      if (instance.ward case final value?) 'ward': value,
      if (instance.images case final value?) 'images': value,
      if (instance.services?.map((e) => e.toJson()).toList() case final value?)
        'services': value,
      if (instance.reviews case final value?) 'reviews': value,
      if (instance.chargeBoxes?.map((e) => e.toJson()).toList()
          case final value?)
        'charge_boxes': value,
    };

Service _$ServiceFromJson(Map json) => Service(
      id: (json['id'] as num?)?.toInt(),
      stationId: (json['station_id'] as num?)?.toInt(),
      serviceType: (json['service_type'] as num?)?.toInt(),
      isFree: (json['is_free'] as num?)?.toInt(),
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.stationId case final value?) 'station_id': value,
      if (instance.serviceType case final value?) 'service_type': value,
      if (instance.isFree case final value?) 'is_free': value,
      if (instance.description case final value?) 'description': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };

ChargeBox _$ChargeBoxFromJson(Map json) => ChargeBox(
      id: (json['id'] as num?)?.toInt(),
      stationId: (json['station_id'] as num?)?.toInt(),
      referenceId: json['reference_id'] as String?,
      status: (json['status'] as num?)?.toInt(),
      name: json['name'] as String?,
      powerKw: (json['power_kw'] as num?)?.toInt(),
      vehicleType: (json['vehicle_type'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      connectors: (json['connectors'] as List<dynamic>?)
          ?.map((e) => Connector.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      station: json['station'] == null
          ? null
          : Station.fromJson(Map<String, dynamic>.from(json['station'] as Map)),
    );

Map<String, dynamic> _$ChargeBoxToJson(ChargeBox instance) => <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.stationId case final value?) 'station_id': value,
      if (instance.referenceId case final value?) 'reference_id': value,
      if (instance.status case final value?) 'status': value,
      if (instance.name case final value?) 'name': value,
      if (instance.powerKw case final value?) 'power_kw': value,
      if (instance.vehicleType case final value?) 'vehicle_type': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
      if (instance.connectors?.map((e) => e.toJson()).toList()
          case final value?)
        'connectors': value,
      if (instance.station?.toJson() case final value?) 'station': value,
    };

Connector _$ConnectorFromJson(Map json) => Connector(
      id: (json['id'] as num?)?.toInt(),
      chargeboxId: (json['chargebox_id'] as num?)?.toInt(),
      connectorType: (json['connector_type'] as num?)?.toInt(),
      status: json['status'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      typeCode: json['type_code'] as String?,
      powerKw: (json['power_kw'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ConnectorToJson(Connector instance) => <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.chargeboxId case final value?) 'chargebox_id': value,
      if (instance.connectorType case final value?) 'connector_type': value,
      if (instance.status case final value?) 'status': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
      if (instance.typeCode case final value?) 'type_code': value,
      if (instance.powerKw case final value?) 'power_kw': value,
    };
