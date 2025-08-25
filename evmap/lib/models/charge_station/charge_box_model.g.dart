// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_box_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeBoxModel _$ChargeBoxModelFromJson(Map json) => ChargeBoxModel(
      charge_box_id: json['charge_box_id'] as String?,
      charge_box_name: json['charge_box_name'] as String?,
      status: json['status'] as String?,
      registration_status: json['registration_status'] as String?,
      description: json['description'] as String?,
      connectors: (json['connectors'] as List<dynamic>?)
          ?.map((e) =>
              ConnectorsModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      price: json['price'] == null
          ? null
          : PriceBoxModel.fromJson(
              Map<String, dynamic>.from(json['price'] as Map)),
      charge_station: json['charge_station'] == null
          ? null
          : ChargeStationModel.fromJson(
              Map<String, dynamic>.from(json['charge_station'] as Map)),
    );

Map<String, dynamic> _$ChargeBoxModelToJson(ChargeBoxModel instance) =>
    <String, dynamic>{
      if (instance.charge_box_id case final value?) 'charge_box_id': value,
      if (instance.charge_box_name case final value?) 'charge_box_name': value,
      if (instance.status case final value?) 'status': value,
      if (instance.registration_status case final value?)
        'registration_status': value,
      if (instance.description case final value?) 'description': value,
      if (instance.connectors case final value?) 'connectors': value,
      if (instance.price case final value?) 'price': value,
      if (instance.charge_station case final value?) 'charge_station': value,
    };

ConnectorsModel _$ConnectorsModelFromJson(Map json) => ConnectorsModel(
      connector_status: json['connector_status'] as String?,
      connector_id: json['connector_id'] as num?,
      charge_box_id: json['charge_box_id'] as String?,
      transaction_id: json['transaction_id'] as num?,
      type: json['type'] == null
          ? null
          : ConnectorType.fromJson(
              Map<String, dynamic>.from(json['type'] as Map)),
    );

Map<String, dynamic> _$ConnectorsModelToJson(ConnectorsModel instance) =>
    <String, dynamic>{
      if (instance.connector_status case final value?)
        'connector_status': value,
      if (instance.connector_id case final value?) 'connector_id': value,
      if (instance.charge_box_id case final value?) 'charge_box_id': value,
      if (instance.transaction_id case final value?) 'transaction_id': value,
      if (instance.type case final value?) 'type': value,
    };

ConnectorType _$ConnectorTypeFromJson(Map json) => ConnectorType()
  ..name = json['name'] as String?
  ..id = (json['id'] as num?)?.toInt()
  ..image_url = json['image_url'] as String?
  ..power_supply = json['power_supply'] as String?;

Map<String, dynamic> _$ConnectorTypeToJson(ConnectorType instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.id case final value?) 'id': value,
      if (instance.image_url case final value?) 'image_url': value,
      if (instance.power_supply case final value?) 'power_supply': value,
    };

PriceBoxModel _$PriceBoxModelFromJson(Map json) => PriceBoxModel()
  ..id = json['id'] as num?
  ..unit = json['unit'] as String?
  ..price_type = json['price_type'] as String?
  ..price_type_name = json['price_type_name'] as String?
  ..details = (json['details'] as List<dynamic>?)
      ?.map((e) => DetailsPrice.fromJson(Map<String, dynamic>.from(e as Map)))
      .toList();

Map<String, dynamic> _$PriceBoxModelToJson(PriceBoxModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.unit case final value?) 'unit': value,
      if (instance.price_type case final value?) 'price_type': value,
      if (instance.price_type_name case final value?) 'price_type_name': value,
      if (instance.details case final value?) 'details': value,
    };

DetailsPrice _$DetailsPriceFromJson(Map json) => DetailsPrice()
  ..id = json['id'] as num?
  ..price = json['price'] as num?;

Map<String, dynamic> _$DetailsPriceToJson(DetailsPrice instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.price case final value?) 'price': value,
    };
