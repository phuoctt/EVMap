// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';

part 'charge_station_model.g.dart';

@JsonSerializable()
class ChargeStationModel {
  num? id;
  String? name;
  List<ImageChargeStationModel>? images;
  List<ChargeBoxModel>? chargeBoxList;
  String? description;
  String? address;
  num? location_latitude;
  num? location_longitude;
  num? distance;
  num? distance_inMeters;
  CustomerModel? customer;

  ChargeStationModel(
      {this.id,
      this.name,
      this.images,
      this.description,
      this.address,
      this.location_latitude,
      this.location_longitude,
      this.distance,
      this.chargeBoxList,
      this.distance_inMeters,
      this.customer});

  ChargeStationModel copyWith({
    num? id,
    String? name,
    List<ImageChargeStationModel>? images,
    String? description,
    String? address,
    num? location_latitude,
    num? location_longitude,
    num? distance,
    num? distance_inMeters,
    List<ChargeBoxModel>? chargeBoxList,
    CustomerModel? customer
  }) {
    return ChargeStationModel(
      id: id ?? this.id,
      name: name ?? this.name,
      images: images ?? this.images,
      description: description ?? this.description,
      address: address ?? this.address,
      location_latitude: location_latitude ?? this.location_latitude,
      distance: distance ?? this.distance,
      distance_inMeters: distance_inMeters ?? this.distance_inMeters,
      chargeBoxList: chargeBoxList ?? this.chargeBoxList,
      customer: customer ?? this.customer,

    );
  }

  String get thumbnail =>
      (images?.isNotEmpty == true ? images?.first.images : null) ??
      'https://vinfastnguyenkiem.vn/files/assets/he-thong-tram-sac-tram-doi-pin-vinfast-anh-3_1646272174.jpg';

  String get distanceString {
    if (distance != null) {
      if (distance! >= 100) {
        return distance!.toStringAsFixed(0);
      }
      return distance!.toStringAsFixed(1);
    }
    return '';
  }

  Map<String, dynamic> toJson() => _$ChargeStationModelToJson(this);

  factory ChargeStationModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeStationModelFromJson(json);
}

@JsonSerializable()
class ImageChargeStationModel {
  num? id;
  num? chargeStation_id;
  String? images;
  String? name;

  ImageChargeStationModel();

  Map<String, dynamic> toJson() => _$ImageChargeStationModelToJson(this);

  factory ImageChargeStationModel.fromJson(Map<String, dynamic> json) =>
      _$ImageChargeStationModelFromJson(json);
}

@JsonSerializable()
class CustomerModel {
  num? id;
  String? full_name;

  CustomerModel();

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
