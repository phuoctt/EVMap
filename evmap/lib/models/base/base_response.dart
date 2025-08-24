// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  T? data;
  String? message;
  int? code;
  Errors? errors;

  BaseResponse({this.code, this.data, this.message, this.errors});

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponse<T> {
  T? data;
  String? message;
  int? code;
  Errors? errors;

  BaseListResponse({this.data, this.message, this.code, this.errors});

  factory BaseListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseListResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseListResponseToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class ListResponse<T> {
  List<T>? list;
  PaginationModel? pagination;

  // int? count;
  // int? current_page;
  // int? last_page;

  ListResponse({
    this.list,
  });

  factory ListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ListResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ListResponseToJson(this, toJsonT);

  bool get isFinish =>
      ((pagination?.page ?? 0) * (pagination?.size ?? 0) >=
          (pagination?.total ?? 0)) ||
      (list?.isEmpty == true);
}

@JsonSerializable()
class Errors {
  @JsonKey(name: 'message_app')
  String? messageApp;

  Errors();

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}

@JsonSerializable()
class PaginationModel {
  num? total;
  num? page;
  num? size;

  PaginationModel();

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
