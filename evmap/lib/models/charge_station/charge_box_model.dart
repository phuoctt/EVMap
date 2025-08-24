// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';

part 'charge_box_model.g.dart';

@JsonSerializable()
class ChargeBoxModel {
  String? charge_box_id;
  String? charge_box_name;
  String? status;
  String? registration_status;
  String? description;
  List<ConnectorsModel>? connectors;
  PriceBoxModel? price;
  ChargeStationModel? charge_station;

  ChargeBoxModel({
    this.charge_box_id,
    this.charge_box_name,
    this.status,
    this.registration_status,
    this.description,
    this.connectors,
    this.price,
    this.charge_station
  });

  ChargeBoxModel copyWith({
    String? charge_box_id,
    String? charge_box_name,
    String? status,
    String? registration_status,
    String? description,
    List<ConnectorsModel>? connectors,
    PriceBoxModel? price,
    ChargeStationModel? charge_station
  }) {
    return ChargeBoxModel(
      charge_box_id: charge_box_id ?? this.charge_box_id,
      charge_box_name: charge_box_name ?? this.charge_box_name,
      status: status ?? this.status,
      registration_status: registration_status ?? this.registration_status,
      description: description ?? this.description,
      connectors: connectors ?? this.connectors,
      price: price ?? this.price,
      charge_station: charge_station ?? this.charge_station,

    );
  }

  Map<String, dynamic> toJson() => _$ChargeBoxModelToJson(this);

  factory ChargeBoxModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeBoxModelFromJson(json);
}

@JsonSerializable()
class ConnectorsModel {
  String? connector_status;
  num? connector_id;
  String? charge_box_id;
  num? transaction_id;
  ConnectorType? type;

  ConnectorsModel(
      {this.connector_status,
      this.connector_id,
      this.charge_box_id,
      this.transaction_id,
      this.type});

  ConnectorsModel copyWith({
    String? connector_status,
    num? connector_id,
    String? charge_box_id,
    num? transaction_id,
    ConnectorType? type,
  }) {
    return ConnectorsModel(
        connector_status: connector_status ?? this.connector_status,
        connector_id: connector_id ?? this.connector_id,
        charge_box_id: charge_box_id ?? this.charge_box_id,
        transaction_id: transaction_id ?? this.transaction_id,
        type: type ?? this.type);
  }

  Map<String, dynamic> toJson() => _$ConnectorsModelToJson(this);

  factory ConnectorsModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectorsModelFromJson(json);
}

@JsonSerializable()
class ConnectorType {
  String? name;
  int? id;
  String? image_url;
  String? power_supply;

  ConnectorType();

  Map<String, dynamic> toJson() => _$ConnectorTypeToJson(this);

  factory ConnectorType.fromJson(Map<String, dynamic> json) =>
      _$ConnectorTypeFromJson(json);
}

@JsonSerializable()
class PriceBoxModel {
  num? id;
  String? unit;
  String? price_type;
  String? price_type_name;
  List<DetailsPrice>? details;

  PriceBoxModel();

  Map<String, dynamic> toJson() => _$PriceBoxModelToJson(this);

  factory PriceBoxModel.fromJson(Map<String, dynamic> json) =>
      _$PriceBoxModelFromJson(json);
}

@JsonSerializable()
class DetailsPrice {
  num? id;
  num? price;

  DetailsPrice();

  Map<String, dynamic> toJson() => _$DetailsPriceToJson(this);

  factory DetailsPrice.fromJson(Map<String, dynamic> json) =>
      _$DetailsPriceFromJson(json);
}
