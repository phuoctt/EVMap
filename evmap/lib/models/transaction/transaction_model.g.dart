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

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) =>
    <String, dynamic>{
      if (instance.transaction_id case final value?) 'transaction_id': value,
      if (instance.connector_id case final value?) 'connector_id': value,
      if (instance.charge_box_id case final value?) 'charge_box_id': value,
      if (instance.user_id case final value?) 'user_id': value,
      if (instance.start_event_timestamp?.toIso8601String() case final value?)
        'start_event_timestamp': value,
      if (instance.start_timestamp?.toIso8601String() case final value?)
        'start_timestamp': value,
      if (instance.stop_event_timestamp?.toIso8601String() case final value?)
        'stop_event_timestamp': value,
      if (instance.charging_time case final value?) 'charging_time': value,
    };

TransactionIdModel _$TransactionIdModelFromJson(Map json) =>
    TransactionIdModel()
      ..ids = (json['ids'] as List<dynamic>?)?.map((e) => e as num).toList();

Map<String, dynamic> _$TransactionIdModelToJson(TransactionIdModel instance) =>
    <String, dynamic>{
      if (instance.ids case final value?) 'ids': value,
    };
