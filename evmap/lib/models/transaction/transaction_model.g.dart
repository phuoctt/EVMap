// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionModel _$TransactionModelFromJson(Map json) => TransactionModel(
      transaction_id: json['transaction_id'] as num?,
      connector_id: json['connector_id'] as num?,
      charge_box_id: json['charge_box_id'] as String?,
      user_id: json['user_id'] as num?,
      start_event_timestamp: json['start_event_timestamp'] == null
          ? null
          : DateTime.parse(json['start_event_timestamp'] as String),
      start_timestamp: json['start_timestamp'] == null
          ? null
          : DateTime.parse(json['start_timestamp'] as String),
      stop_event_timestamp: json['stop_event_timestamp'] == null
          ? null
          : DateTime.parse(json['stop_event_timestamp'] as String),
      charging_time: json['charging_time'] as String?,
    );

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transaction_id', instance.transaction_id);
  writeNotNull('connector_id', instance.connector_id);
  writeNotNull('charge_box_id', instance.charge_box_id);
  writeNotNull('user_id', instance.user_id);
  writeNotNull('start_event_timestamp',
      instance.start_event_timestamp?.toIso8601String());
  writeNotNull('start_timestamp', instance.start_timestamp?.toIso8601String());
  writeNotNull(
      'stop_event_timestamp', instance.stop_event_timestamp?.toIso8601String());
  writeNotNull('charging_time', instance.charging_time);
  return val;
}

TransactionIdModel _$TransactionIdModelFromJson(Map json) =>
    TransactionIdModel()
      ..ids = (json['ids'] as List<dynamic>?)?.map((e) => e as num).toList();

Map<String, dynamic> _$TransactionIdModelToJson(TransactionIdModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ids', instance.ids);
  return val;
}
