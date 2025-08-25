// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeStationModel _$ChargeStationModelFromJson(Map json) => ChargeStationModel(
      id: json['id'] as num?,
      name: json['name'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageChargeStationModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      description: json['description'] as String?,
      address: json['address'] as String?,
      location_latitude: json['location_latitude'] as num?,
      location_longitude: json['location_longitude'] as num?,
      distance: json['distance'] as num?,
      chargeBoxList: (json['chargeBoxList'] as List<dynamic>?)
          ?.map((e) =>
              ChargeBoxModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      distance_inMeters: json['distance_inMeters'] as num?,
      customer: json['customer'] == null
          ? null
          : CustomerModel.fromJson(
              Map<String, dynamic>.from(json['customer'] as Map)),
    );

Map<String, dynamic> _$ChargeStationModelToJson(ChargeStationModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.images case final value?) 'images': value,
      if (instance.chargeBoxList case final value?) 'chargeBoxList': value,
      if (instance.description case final value?) 'description': value,
      if (instance.address case final value?) 'address': value,
      if (instance.location_latitude case final value?)
        'location_latitude': value,
      if (instance.location_longitude case final value?)
        'location_longitude': value,
      if (instance.distance case final value?) 'distance': value,
      if (instance.distance_inMeters case final value?)
        'distance_inMeters': value,
      if (instance.customer case final value?) 'customer': value,
    };

ImageChargeStationModel _$ImageChargeStationModelFromJson(Map json) =>
    ImageChargeStationModel()
      ..id = json['id'] as num?
      ..chargeStation_id = json['chargeStation_id'] as num?
      ..images = json['images'] as String?
      ..name = json['name'] as String?;

Map<String, dynamic> _$ImageChargeStationModelToJson(
        ImageChargeStationModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.chargeStation_id case final value?)
        'chargeStation_id': value,
      if (instance.images case final value?) 'images': value,
      if (instance.name case final value?) 'name': value,
    };

CustomerModel _$CustomerModelFromJson(Map json) => CustomerModel()
  ..id = json['id'] as num?
  ..full_name = json['full_name'] as String?;

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.full_name case final value?) 'full_name': value,
    };
