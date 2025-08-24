// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'topup_request.g.dart';

@JsonSerializable()
class TopUpRequest {
  String? env;
  String? payment_type;
  String? payment_method;
  String? redirect_url;
  num? amount;


  TopUpRequest({
    this.env,
    this.payment_type,
    this.payment_method,
    this.redirect_url,
    this.amount,
  });

  Map<String, dynamic> toJson() => _$TopUpRequestToJson(this);
}
