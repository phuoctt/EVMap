// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailBillModel _$DetailBillModelFromJson(Map json) => DetailBillModel()
  ..id = json['id'] as num?
  ..user_id = json['user_id'] as num?
  ..customer_id = json['customer_id'] as num?
  ..transaction_id = json['transaction_id'] as num?
  ..bill_status_id = json['bill_status_id'] as num?
  ..bill_status_name = json['bill_status_name'] as String?
  ..bill_status_code = json['bill_status_code'] as String?
  ..bill_date_time = json['bill_date_time'] == null
      ? null
      : DateTime.parse(json['bill_date_time'] as String)
  ..pay_date_time = json['pay_date_time'] == null
      ? null
      : DateTime.parse(json['pay_date_time'] as String)
  ..price_type = json['price_type'] as String?
  ..price_type_name = json['price_type_name'] as String?
  ..unit = json['unit'] as String?
  ..total_value = json['total_value'] as num?
  ..total_price = json['total_price'] as num?
  ..currency = json['currency'] as String?
  ..point_value_before = json['point_value_before'] as num?
  ..point_value_after = json['point_value_after'] as num?;

Map<String, dynamic> _$DetailBillModelToJson(DetailBillModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.user_id case final value?) 'user_id': value,
      if (instance.customer_id case final value?) 'customer_id': value,
      if (instance.transaction_id case final value?) 'transaction_id': value,
      if (instance.bill_status_id case final value?) 'bill_status_id': value,
      if (instance.bill_status_name case final value?)
        'bill_status_name': value,
      if (instance.bill_status_code case final value?)
        'bill_status_code': value,
      if (instance.bill_date_time?.toIso8601String() case final value?)
        'bill_date_time': value,
      if (instance.pay_date_time?.toIso8601String() case final value?)
        'pay_date_time': value,
      if (instance.price_type case final value?) 'price_type': value,
      if (instance.price_type_name case final value?) 'price_type_name': value,
      if (instance.unit case final value?) 'unit': value,
      if (instance.total_value case final value?) 'total_value': value,
      if (instance.total_price case final value?) 'total_price': value,
      if (instance.currency case final value?) 'currency': value,
      if (instance.point_value_before case final value?)
        'point_value_before': value,
      if (instance.point_value_after case final value?)
        'point_value_after': value,
    };
