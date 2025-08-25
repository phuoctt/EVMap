// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    BaseResponse<T>(
      code: (json['code'] as num?)?.toInt(),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(Map<String, dynamic>.from(json['errors'] as Map)),
    );

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      if (_$nullableGenericToJson(instance.data, toJsonT) case final value?)
        'data': value,
      if (instance.message case final value?) 'message': value,
      if (instance.code case final value?) 'code': value,
      if (instance.errors case final value?) 'errors': value,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

BaseListResponse<T> _$BaseListResponseFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    BaseListResponse<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(Map<String, dynamic>.from(json['errors'] as Map)),
    );

Map<String, dynamic> _$BaseListResponseToJson<T>(
  BaseListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      if (_$nullableGenericToJson(instance.data, toJsonT) case final value?)
        'data': value,
      if (instance.message case final value?) 'message': value,
      if (instance.code case final value?) 'code': value,
      if (instance.errors case final value?) 'errors': value,
    };

ListResponse<T> _$ListResponseFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    ListResponse<T>(
      list: (json['list'] as List<dynamic>?)?.map(fromJsonT).toList(),
    )..pagination = json['pagination'] == null
        ? null
        : PaginationModel.fromJson(
            Map<String, dynamic>.from(json['pagination'] as Map));

Map<String, dynamic> _$ListResponseToJson<T>(
  ListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      if (instance.list?.map(toJsonT).toList() case final value?) 'list': value,
      if (instance.pagination case final value?) 'pagination': value,
    };

Errors _$ErrorsFromJson(Map json) =>
    Errors()..messageApp = json['message_app'] as String?;

Map<String, dynamic> _$ErrorsToJson(Errors instance) => <String, dynamic>{
      if (instance.messageApp case final value?) 'message_app': value,
    };

PaginationModel _$PaginationModelFromJson(Map json) => PaginationModel()
  ..total = json['total'] as num?
  ..page = json['page'] as num?
  ..size = json['size'] as num?;

Map<String, dynamic> _$PaginationModelToJson(PaginationModel instance) =>
    <String, dynamic>{
      if (instance.total case final value?) 'total': value,
      if (instance.page case final value?) 'page': value,
      if (instance.size case final value?) 'size': value,
    };
