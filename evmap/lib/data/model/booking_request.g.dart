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

Map<String, dynamic> _$BookingRequestToJson(BookingRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('charge_box_id', instance.charge_box_id);
  writeNotNull('connector_id', instance.connector_id);
  writeNotNull('expiry_datetime', instance.expiry_datetime?.toIso8601String());
  writeNotNull('start_datetime', instance.start_datetime?.toIso8601String());
  return val;
}
