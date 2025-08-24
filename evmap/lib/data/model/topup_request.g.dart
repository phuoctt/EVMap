// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopUpRequest _$TopUpRequestFromJson(Map json) => TopUpRequest(
      env: json['env'] as String?,
      payment_type: json['payment_type'] as String?,
      payment_method: json['payment_method'] as String?,
      redirect_url: json['redirect_url'] as String?,
      amount: json['amount'] as num?,
    );

Map<String, dynamic> _$TopUpRequestToJson(TopUpRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('env', instance.env);
  writeNotNull('payment_type', instance.payment_type);
  writeNotNull('payment_method', instance.payment_method);
  writeNotNull('redirect_url', instance.redirect_url);
  writeNotNull('amount', instance.amount);
  return val;
}
