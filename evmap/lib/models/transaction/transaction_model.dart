// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
class TransactionModel {
  num? transaction_id;
  num? connector_id;
  String? charge_box_id;
  num? user_id;
  DateTime? start_event_timestamp;
  DateTime? start_timestamp;
  DateTime? stop_event_timestamp;
  String? charging_time;


  TransactionModel({
    this.transaction_id,
    this.connector_id,
    this.charge_box_id,
    this.user_id,
    this.start_event_timestamp,
    this.start_timestamp,
    this.stop_event_timestamp,
    this.charging_time
  });

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

@JsonSerializable()
class TransactionIdModel {
  List<num>? ids;

  TransactionIdModel();

  Map<String, dynamic> toJson() => _$TransactionIdModelToJson(this);

  factory TransactionIdModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionIdModelFromJson(json);
}
