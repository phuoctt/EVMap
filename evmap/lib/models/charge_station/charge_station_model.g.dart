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

Map<String, dynamic> _$ChargeStationModelToJson(ChargeStationModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('images', instance.images);
  writeNotNull('chargeBoxList', instance.chargeBoxList);
  writeNotNull('description', instance.description);
  writeNotNull('address', instance.address);
  writeNotNull('location_latitude', instance.location_latitude);
  writeNotNull('location_longitude', instance.location_longitude);
  writeNotNull('distance', instance.distance);
  writeNotNull('distance_inMeters', instance.distance_inMeters);
  writeNotNull('customer', instance.customer);
  return val;
}

ImageChargeStationModel _$ImageChargeStationModelFromJson(Map json) =>
    ImageChargeStationModel()
      ..id = json['id'] as num?
      ..chargeStation_id = json['chargeStation_id'] as num?
      ..images = json['images'] as String?
      ..name = json['name'] as String?;

Map<String, dynamic> _$ImageChargeStationModelToJson(
    ImageChargeStationModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('chargeStation_id', instance.chargeStation_id);
  writeNotNull('images', instance.images);
  writeNotNull('name', instance.name);
  return val;
}

CustomerModel _$CustomerModelFromJson(Map json) => CustomerModel()
  ..id = json['id'] as num?
  ..full_name = json['full_name'] as String?;

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('full_name', instance.full_name);
  return val;
}
