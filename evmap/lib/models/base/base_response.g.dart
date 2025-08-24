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
      code: json['code'] as int?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(Map<String, dynamic>.from(json['errors'] as Map)),
    );

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', _$nullableGenericToJson(instance.data, toJsonT));
  writeNotNull('message', instance.message);
  writeNotNull('code', instance.code);
  writeNotNull('errors', instance.errors);
  return val;
}

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
      code: json['code'] as int?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(Map<String, dynamic>.from(json['errors'] as Map)),
    );

Map<String, dynamic> _$BaseListResponseToJson<T>(
  BaseListResponse<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', _$nullableGenericToJson(instance.data, toJsonT));
  writeNotNull('message', instance.message);
  writeNotNull('code', instance.code);
  writeNotNull('errors', instance.errors);
  return val;
}

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
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('list', instance.list?.map(toJsonT).toList());
  writeNotNull('pagination', instance.pagination);
  return val;
}

Errors _$ErrorsFromJson(Map json) =>
    Errors()..messageApp = json['message_app'] as String?;

Map<String, dynamic> _$ErrorsToJson(Errors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message_app', instance.messageApp);
  return val;
}

PaginationModel _$PaginationModelFromJson(Map json) => PaginationModel()
  ..total = json['total'] as num?
  ..page = json['page'] as num?
  ..size = json['size'] as num?;

Map<String, dynamic> _$PaginationModelToJson(PaginationModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('size', instance.size);
  return val;
}
