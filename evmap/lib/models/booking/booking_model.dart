// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'booking_model.g.dart';

@JsonSerializable()
class BookingModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "charge_box_id")
  String? chargeBoxId;
  @JsonKey(name: "connector_id")
  int? connectorId;
  @JsonKey(name: "transaction_id")
  dynamic transactionId;
  @JsonKey(name: "status_id")
  int? statusId;
  @JsonKey(name: "status_name")
  String? statusName;
  @JsonKey(name: "start_datetime")
  DateTime? startDatetime;
  @JsonKey(name: "expiry_datetime")
  DateTime? expiryDatetime;
  @JsonKey(name: "request_datetime")
  DateTime? requestDatetime;
  @JsonKey(name: "cancel_datetime")
  dynamic cancelDatetime;
  @JsonKey(name: "deposit")
  int? deposit;

  DateTime? get endDatetime {
    return expiryDatetime?.add(const Duration(seconds: 1));
  }

  BookingModel({
    this.id,
    this.userId,
    this.chargeBoxId,
    this.connectorId,
    this.transactionId,
    this.statusId,
    this.statusName,
    this.startDatetime,
    this.expiryDatetime,
    this.requestDatetime,
    this.cancelDatetime,
    this.deposit,
  });

  BookingModel copyWith({
    int? id,
    int? userId,
    String? chargeBoxId,
    int? connectorId,
    dynamic transactionId,
    int? statusId,
    String? statusName,
    DateTime? startDatetime,
    DateTime? expiryDatetime,
    DateTime? requestDatetime,
    dynamic cancelDatetime,
    int? deposit,
  }) =>
      BookingModel(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        chargeBoxId: chargeBoxId ?? this.chargeBoxId,
        connectorId: connectorId ?? this.connectorId,
        transactionId: transactionId ?? this.transactionId,
        statusId: statusId ?? this.statusId,
        statusName: statusName ?? this.statusName,
        startDatetime: startDatetime ?? this.startDatetime,
        expiryDatetime: expiryDatetime ?? this.expiryDatetime,
        requestDatetime: requestDatetime ?? this.requestDatetime,
        cancelDatetime: cancelDatetime ?? this.cancelDatetime,
        deposit: deposit ?? this.deposit,
      );

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookingModelToJson(this);
}
