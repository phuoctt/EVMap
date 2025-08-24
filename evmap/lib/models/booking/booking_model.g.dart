// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingModel _$BookingModelFromJson(Map json) => BookingModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      chargeBoxId: json['charge_box_id'] as String?,
      connectorId: json['connector_id'] as int?,
      transactionId: json['transaction_id'],
      statusId: json['status_id'] as int?,
      statusName: json['status_name'] as String?,
      startDatetime: json['start_datetime'] == null
          ? null
          : DateTime.parse(json['start_datetime'] as String),
      expiryDatetime: json['expiry_datetime'] == null
          ? null
          : DateTime.parse(json['expiry_datetime'] as String),
      requestDatetime: json['request_datetime'] == null
          ? null
          : DateTime.parse(json['request_datetime'] as String),
      cancelDatetime: json['cancel_datetime'],
      deposit: json['deposit'] as int?,
    );

Map<String, dynamic> _$BookingModelToJson(BookingModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.userId);
  writeNotNull('charge_box_id', instance.chargeBoxId);
  writeNotNull('connector_id', instance.connectorId);
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('status_id', instance.statusId);
  writeNotNull('status_name', instance.statusName);
  writeNotNull('start_datetime', instance.startDatetime?.toIso8601String());
  writeNotNull('expiry_datetime', instance.expiryDatetime?.toIso8601String());
  writeNotNull('request_datetime', instance.requestDatetime?.toIso8601String());
  writeNotNull('cancel_datetime', instance.cancelDatetime);
  writeNotNull('deposit', instance.deposit);
  return val;
}
