// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'charge_model.g.dart';

@JsonSerializable()
class ChargeDataModel {
  num? connectorId;
  String? status;
  String? errorCode;
  num? transactionId;
  ChargeMetaModel? meta;

  ChargeDataModel({
    this.connectorId,
    this.status,
    this.errorCode,
    this.transactionId,
    this.meta,
  });

  ChargeDataModel copyWith({
    num? connectorId,
    String? status,
    String? errorCode,
    num? transactionId,
    ChargeMetaModel? meta,
  }) {
    return ChargeDataModel(
      connectorId: connectorId ?? this.connectorId,
      errorCode: status ?? this.status,
      status: status ?? this.status,
      transactionId: transactionId ?? this.transactionId,
      meta: meta ?? this.meta,
    );
  }

  Map<String, dynamic> toJson() => _$ChargeDataModelToJson(this);

  factory ChargeDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeDataModelFromJson(json);
}

@JsonSerializable()
class ChargeMetaModel {
  ChargeMetaDataModel? temperature;
  ChargeMetaDataModel? energy_active_import_register;
  ChargeMetaDataModel? power_active_import;
  ChargeMetaDataModel? soc;

  ChargeMetaModel();

  Map<String, dynamic> toJson() => _$ChargeMetaModelToJson(this);

  factory ChargeMetaModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeMetaModelFromJson(json);
}

@JsonSerializable()
class ChargeMetaDataModel {
  String? measurand;
  String? value;
  String? unit;

  ChargeMetaDataModel();

  Map<String, dynamic> toJson() => _$ChargeMetaDataModelToJson(this);

  factory ChargeMetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeMetaDataModelFromJson(json);
}
