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

Map<String, dynamic> _$TopUpRequestToJson(TopUpRequest instance) =>
    <String, dynamic>{
      if (instance.env case final value?) 'env': value,
      if (instance.payment_type case final value?) 'payment_type': value,
      if (instance.payment_method case final value?) 'payment_method': value,
      if (instance.redirect_url case final value?) 'redirect_url': value,
      if (instance.amount case final value?) 'amount': value,
    };
