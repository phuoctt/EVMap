// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingRequest _$BookingRequestFromJson(Map json) => BookingRequest(
      charge_box_id: json['charge_box_id'] as String?,
      connector_id: json['connector_id'] as num?,
      expiry_datetime: json['expiry_datetime'] == null
          ? null
          : DateTime.parse(json['expiry_datetime'] as String),
      start_datetime: json['start_datetime'] == null
          ? null
          : DateTime.parse(json['start_datetime'] as String),
    );

Map<String, dynamic> _$BookingRequestToJson(BookingRequest instance) =>
    <String, dynamic>{
      if (instance.charge_box_id case final value?) 'charge_box_id': value,
      if (instance.connector_id case final value?) 'connector_id': value,
      if (instance.expiry_datetime?.toIso8601String() case final value?)
        'expiry_datetime': value,
      if (instance.start_datetime?.toIso8601String() case final value?)
        'start_datetime': value,
    };
