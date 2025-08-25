// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingModel _$BookingModelFromJson(Map json) => BookingModel(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      chargeBoxId: json['charge_box_id'] as String?,
      connectorId: (json['connector_id'] as num?)?.toInt(),
      transactionId: json['transaction_id'],
      statusId: (json['status_id'] as num?)?.toInt(),
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
      deposit: (json['deposit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BookingModelToJson(BookingModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.userId case final value?) 'user_id': value,
      if (instance.chargeBoxId case final value?) 'charge_box_id': value,
      if (instance.connectorId case final value?) 'connector_id': value,
      if (instance.transactionId case final value?) 'transaction_id': value,
      if (instance.statusId case final value?) 'status_id': value,
      if (instance.statusName case final value?) 'status_name': value,
      if (instance.startDatetime?.toIso8601String() case final value?)
        'start_datetime': value,
      if (instance.expiryDatetime?.toIso8601String() case final value?)
        'expiry_datetime': value,
      if (instance.requestDatetime?.toIso8601String() case final value?)
        'request_datetime': value,
      if (instance.cancelDatetime case final value?) 'cancel_datetime': value,
      if (instance.deposit case final value?) 'deposit': value,
    };
