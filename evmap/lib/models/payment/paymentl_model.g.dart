// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentl_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentModel _$PaymentModelFromJson(Map json) => PaymentModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      amount: json['amount'] as int?,
      paymentMethodId: json['payment_method_id'] as int?,
      paymentMethodCode: json['payment_method_code'] as String?,
      paymentStatusId: json['payment_status_id'] as int?,
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

Map<String, dynamic> _$PaymentModelToJson(PaymentModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.userId);
  writeNotNull('amount', instance.amount);
  writeNotNull('payment_method_id', instance.paymentMethodId);
  writeNotNull('payment_method_code', instance.paymentMethodCode);
  writeNotNull('payment_status_id', instance.paymentStatusId);
  writeNotNull('payment_status_name', instance.paymentStatusName);
  writeNotNull('create_datetime', instance.createDatetime?.toIso8601String());
  writeNotNull('expired_datetime', instance.expiredDatetime?.toIso8601String());
  writeNotNull('request_data', instance.requestData);
  writeNotNull('pay_action', instance.payAction);
  return val;
}

PayAction _$PayActionFromJson(Map json) => PayAction(
      id: json['id'] as int?,
      paymentMethodCode: json['payment_method_code'] as String?,
      amount: json['amount'] as int?,
      payUrl: json['pay_url'] as String?,
      deeplink: json['deeplink'] as String?,
      extraData: json['extra_data'] == null
          ? null
          : ExtraData.fromJson(
              Map<String, dynamic>.from(json['extra_data'] as Map)),
    );

Map<String, dynamic> _$PayActionToJson(PayAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('payment_method_code', instance.paymentMethodCode);
  writeNotNull('amount', instance.amount);
  writeNotNull('pay_url', instance.payUrl);
  writeNotNull('deeplink', instance.deeplink);
  writeNotNull('extra_data', instance.extraData);
  return val;
}

PaymentRequestDataModel _$PaymentRequestDataModelFromJson(Map json) =>
    PaymentRequestDataModel(
      paymentEnv: json['payment_env'] as String?,
      paymentType: json['payment_type'] as String?,
      paymentMethod: json['payment_method'] as String?,
      redirectUrl: json['redirect_url'] as String?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$PaymentRequestDataModelToJson(
    PaymentRequestDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payment_env', instance.paymentEnv);
  writeNotNull('payment_type', instance.paymentType);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('redirect_url', instance.redirectUrl);
  writeNotNull('amount', instance.amount);
  return val;
}

ExtraData _$ExtraDataFromJson(Map json) => ExtraData(
      zpTransToken: json['zp_trans_token'] as String?,
      orderToken: json['order_token'] as String?,
    );

Map<String, dynamic> _$ExtraDataToJson(ExtraData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('zp_trans_token', instance.zpTransToken);
  writeNotNull('order_token', instance.orderToken);
  return val;
}
