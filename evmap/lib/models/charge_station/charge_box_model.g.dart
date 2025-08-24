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

Map<String, dynamic> _$ChargeBoxModelToJson(ChargeBoxModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('charge_box_id', instance.charge_box_id);
  writeNotNull('charge_box_name', instance.charge_box_name);
  writeNotNull('status', instance.status);
  writeNotNull('registration_status', instance.registration_status);
  writeNotNull('description', instance.description);
  writeNotNull('connectors', instance.connectors);
  writeNotNull('price', instance.price);
  writeNotNull('charge_station', instance.charge_station);
  return val;
}

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

Map<String, dynamic> _$ConnectorsModelToJson(ConnectorsModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('connector_status', instance.connector_status);
  writeNotNull('connector_id', instance.connector_id);
  writeNotNull('charge_box_id', instance.charge_box_id);
  writeNotNull('transaction_id', instance.transaction_id);
  writeNotNull('type', instance.type);
  return val;
}

ConnectorType _$ConnectorTypeFromJson(Map json) => ConnectorType()
  ..name = json['name'] as String?
  ..id = json['id'] as int?
  ..image_url = json['image_url'] as String?
  ..power_supply = json['power_supply'] as String?;

Map<String, dynamic> _$ConnectorTypeToJson(ConnectorType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('image_url', instance.image_url);
  writeNotNull('power_supply', instance.power_supply);
  return val;
}

PriceBoxModel _$PriceBoxModelFromJson(Map json) => PriceBoxModel()
  ..id = json['id'] as num?
  ..unit = json['unit'] as String?
  ..price_type = json['price_type'] as String?
  ..price_type_name = json['price_type_name'] as String?
  ..details = (json['details'] as List<dynamic>?)
      ?.map((e) => DetailsPrice.fromJson(Map<String, dynamic>.from(e as Map)))
      .toList();

Map<String, dynamic> _$PriceBoxModelToJson(PriceBoxModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('unit', instance.unit);
  writeNotNull('price_type', instance.price_type);
  writeNotNull('price_type_name', instance.price_type_name);
  writeNotNull('details', instance.details);
  return val;
}

DetailsPrice _$DetailsPriceFromJson(Map json) => DetailsPrice()
  ..id = json['id'] as num?
  ..price = json['price'] as num?;

Map<String, dynamic> _$DetailsPriceToJson(DetailsPrice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('price', instance.price);
  return val;
}
