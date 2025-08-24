// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'detail_bill_model.g.dart';

@JsonSerializable()
class DetailBillModel {
  num? id;
  num? user_id;
  num? customer_id;
  num? transaction_id;
  num? bill_status_id;
  String? bill_status_name;
  String? bill_status_code;
  DateTime? bill_date_time;
  DateTime? pay_date_time;
  String? price_type;
  String? price_type_name;
  String? unit;
  num? total_value;
  num? total_price;
  String? currency;
  num? point_value_before;
  num? point_value_after;

  DetailBillModel();

  Map<String, dynamic> toJson() => _$DetailBillModelToJson(this);

  factory DetailBillModel.fromJson(Map<String, dynamic> json) =>
      _$DetailBillModelFromJson(json);
}
