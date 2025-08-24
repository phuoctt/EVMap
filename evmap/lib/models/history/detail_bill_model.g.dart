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

Map<String, dynamic> _$DetailBillModelToJson(DetailBillModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.user_id);
  writeNotNull('customer_id', instance.customer_id);
  writeNotNull('transaction_id', instance.transaction_id);
  writeNotNull('bill_status_id', instance.bill_status_id);
  writeNotNull('bill_status_name', instance.bill_status_name);
  writeNotNull('bill_status_code', instance.bill_status_code);
  writeNotNull('bill_date_time', instance.bill_date_time?.toIso8601String());
  writeNotNull('pay_date_time', instance.pay_date_time?.toIso8601String());
  writeNotNull('price_type', instance.price_type);
  writeNotNull('price_type_name', instance.price_type_name);
  writeNotNull('unit', instance.unit);
  writeNotNull('total_value', instance.total_value);
  writeNotNull('total_price', instance.total_price);
  writeNotNull('currency', instance.currency);
  writeNotNull('point_value_before', instance.point_value_before);
  writeNotNull('point_value_after', instance.point_value_after);
  return val;
}
