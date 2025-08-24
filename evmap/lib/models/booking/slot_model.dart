// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';

part 'slot_model.g.dart';

@JsonSerializable()
class SlotModel {
  @JsonKey(name: "charge_box_id")
  String? chargeBoxId;
  @JsonKey(name: "connectors")
  List<ConnectorSlotModel>? connectors;

  SlotModel({
    this.chargeBoxId,
    this.connectors,
  });

  SlotModel copyWith({
    String? chargeBoxId,
    List<ConnectorSlotModel>? connectors,
  }) =>
      SlotModel(
        chargeBoxId: chargeBoxId ?? this.chargeBoxId,
        connectors: connectors ?? this.connectors,
      );

  factory SlotModel.fromJson(Map<String, dynamic> json) => _$SlotModelFromJson(json);

  Map<String, dynamic> toJson() => _$SlotModelToJson(this);
}

@JsonSerializable()
class ConnectorSlotModel {
  @JsonKey(name: "connector_id")
  int? connectorId;
  @JsonKey(name: "slots")
  List<SlotDataModel>? slots;

  ConnectorSlotModel({
    this.connectorId,
    this.slots,
  });

  ConnectorSlotModel copyWith({
    int? connectorId,
    List<SlotDataModel>? slots,
  }) =>
      ConnectorSlotModel(
        connectorId: connectorId ?? this.connectorId,
        slots: slots ?? this.slots,
      );

  factory ConnectorSlotModel.fromJson(Map<String, dynamic> json) => _$ConnectorSlotModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectorSlotModelToJson(this);
}

@JsonSerializable()
class SlotDataModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "start_datetime")
  DateTime? startDatetime;
  @JsonKey(name: "expiry_datetime")
  DateTime? expiryDatetime;

  DateTime? get endDatetime {
    return expiryDatetime?.add(const Duration(seconds: 1));
  }
  SlotDataModel({
    this.id,
    this.userId,
    this.startDatetime,
    this.expiryDatetime,
  });

  SlotDataModel copyWith({
    int? id,
    int? userId,
    DateTime? startDatetime,
    DateTime? expiryDatetime,
  }) =>
      SlotDataModel(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        startDatetime: startDatetime ?? this.startDatetime,
        expiryDatetime: expiryDatetime ?? this.expiryDatetime,
      );

  factory SlotDataModel.fromJson(Map<String, dynamic> json) => _$SlotDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$SlotDataModelToJson(this);
}
