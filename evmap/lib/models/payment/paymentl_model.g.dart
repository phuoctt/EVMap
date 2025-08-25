// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentl_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentModel _$PaymentModelFromJson(Map json) => PaymentModel(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toInt(),
      paymentMethodId: (json['payment_method_id'] as num?)?.toInt(),
      paymentMethodCode: json['payment_method_code'] as String?,
      paymentStatusId: (json['payment_status_id'] as num?)?.toInt(),
      paymentStatusName: json['payment_status_name'] as String?,
      createDatetime: json['create_datetime'] == null
          ? null
          : DateTime.parse(json['create_datetime'] as String),
      expiredDatetime: json['expired_datetime'] == null
          ? null
          : DateTime.parse(json['expired_datetime'] as String),
      requestData: json['request_data'] == null
          ? null
          : PaymentRequestDataModel.fromJson(
              Map<String, dynamic>.from(json['request_data'] as Map)),
      payAction: json['pay_action'] == null
          ? null
          : PayAction.fromJson(
              Map<String, dynamic>.from(json['pay_action'] as Map)),
    );

Map<String, dynamic> _$PaymentModelToJson(PaymentModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.userId case final value?) 'user_id': value,
      if (instance.amount case final value?) 'amount': value,
      if (instance.paymentMethodId case final value?)
        'payment_method_id': value,
      if (instance.paymentMethodCode case final value?)
        'payment_method_code': value,
      if (instance.paymentStatusId case final value?)
        'payment_status_id': value,
      if (instance.paymentStatusName case final value?)
        'payment_status_name': value,
      if (instance.createDatetime?.toIso8601String() case final value?)
        'create_datetime': value,
      if (instance.expiredDatetime?.toIso8601String() case final value?)
        'expired_datetime': value,
      if (instance.requestData case final value?) 'request_data': value,
      if (instance.payAction case final value?) 'pay_action': value,
    };

PayAction _$PayActionFromJson(Map json) => PayAction(
      id: (json['id'] as num?)?.toInt(),
      paymentMethodCode: json['payment_method_code'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      payUrl: json['pay_url'] as String?,
      deeplink: json['deeplink'] as String?,
      extraData: json['extra_data'] == null
          ? null
          : ExtraData.fromJson(
              Map<String, dynamic>.from(json['extra_data'] as Map)),
    );

Map<String, dynamic> _$PayActionToJson(PayAction instance) => <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.paymentMethodCode case final value?)
        'payment_method_code': value,
      if (instance.amount case final value?) 'amount': value,
      if (instance.payUrl case final value?) 'pay_url': value,
      if (instance.deeplink case final value?) 'deeplink': value,
      if (instance.extraData case final value?) 'extra_data': value,
    };

PaymentRequestDataModel _$PaymentRequestDataModelFromJson(Map json) =>
    PaymentRequestDataModel(
      paymentEnv: json['payment_env'] as String?,
      paymentType: json['payment_type'] as String?,
      paymentMethod: json['payment_method'] as String?,
      redirectUrl: json['redirect_url'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaymentRequestDataModelToJson(
        PaymentRequestDataModel instance) =>
    <String, dynamic>{
      if (instance.paymentEnv case final value?) 'payment_env': value,
      if (instance.paymentType case final value?) 'payment_type': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.redirectUrl case final value?) 'redirect_url': value,
      if (instance.amount case final value?) 'amount': value,
    };

ExtraData _$ExtraDataFromJson(Map json) => ExtraData(
      zpTransToken: json['zp_trans_token'] as String?,
      orderToken: json['order_token'] as String?,
    );

Map<String, dynamic> _$ExtraDataToJson(ExtraData instance) => <String, dynamic>{
      if (instance.zpTransToken case final value?) 'zp_trans_token': value,
      if (instance.orderToken case final value?) 'order_token': value,
    };
