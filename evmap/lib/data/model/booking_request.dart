// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'booking_request.g.dart';

@JsonSerializable()
class BookingRequest {
  String? charge_box_id;
  num? connector_id;
  DateTime? expiry_datetime;
  DateTime? start_datetime;

  BookingRequest({
    this.charge_box_id,
    this.connector_id,
    this.expiry_datetime,
    this.start_datetime,
  });

  BookingRequest toRequest() {
    return BookingRequest(
      charge_box_id: charge_box_id,
      connector_id: connector_id,
      expiry_datetime:
          expiry_datetime?.subtract(const Duration(seconds: 1)).toUtc(),
      start_datetime: start_datetime?.toUtc(),
    );
  }

  Map<String, dynamic> toJson() => _$BookingRequestToJson(this);
}
