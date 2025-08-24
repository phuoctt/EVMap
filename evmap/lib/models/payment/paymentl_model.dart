// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'paymentl_model.g.dart';

@JsonSerializable()
class PaymentModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "amount")
  int? amount;
  @JsonKey(name: "payment_method_id")
  int? paymentMethodId;
  @JsonKey(name: "payment_method_code")
  String? paymentMethodCode;
  @JsonKey(name: "payment_status_id")
  int? paymentStatusId;
  @JsonKey(name: "payment_status_name")
  String? paymentStatusName;
  @JsonKey(name: "create_datetime")
  DateTime? createDatetime;
  @JsonKey(name: "expired_datetime")
  DateTime? expiredDatetime;
  @JsonKey(name: "request_data")
  PaymentRequestDataModel? requestData;
  @JsonKey(name: "pay_action")
  PayAction? payAction;

  PaymentModel({
    this.id,
    this.userId,
    this.amount,
    this.paymentMethodId,
    this.paymentMethodCode,
    this.paymentStatusId,
    this.paymentStatusName,
    this.createDatetime,
    this.expiredDatetime,
    this.requestData,
    this.payAction,
  });

  PaymentModel copyWith({
    int? id,
    int? userId,
    int? amount,
    int? paymentMethodId,
    String? paymentMethodCode,
    int? paymentStatusId,
    String? paymentStatusName,
    DateTime? createDatetime,
    DateTime? expiredDatetime,
    PaymentRequestDataModel? requestData,
    PayAction? payAction,
  }) {
    return PaymentModel(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        amount: amount ?? this.amount,
        paymentMethodId: paymentMethodId ?? this.paymentMethodId,
        paymentMethodCode: paymentMethodCode ?? this.paymentMethodCode,
        paymentStatusId: paymentStatusId ?? this.paymentStatusId,
        paymentStatusName: paymentStatusName ?? this.paymentStatusName,
        createDatetime: createDatetime ?? this.createDatetime,
        requestData: requestData ?? this.requestData,
        payAction: payAction ?? this.payAction);
  }

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}

@JsonSerializable()
class PayAction {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "payment_method_code")
  String? paymentMethodCode;
  @JsonKey(name: "amount")
  int? amount;
  @JsonKey(name: "pay_url")
  String? payUrl;
  @JsonKey(name: "deeplink")
  String? deeplink;
  @JsonKey(name: "extra_data")
  ExtraData? extraData;

  PayAction(
      {this.id,
      this.paymentMethodCode,
      this.amount,
      this.payUrl,
      this.deeplink,
      this.extraData});

  factory PayAction.fromJson(Map<String, dynamic> json) =>
      _$PayActionFromJson(json);
}

@JsonSerializable()
class PaymentRequestDataModel {
  @JsonKey(name: "payment_env")
  String? paymentEnv;
  @JsonKey(name: "payment_type")
  String? paymentType;
  @JsonKey(name: "payment_method")
  String? paymentMethod;
  @JsonKey(name: "redirect_url")
  String? redirectUrl;
  @JsonKey(name: "amount")
  int? amount;

  PaymentRequestDataModel({
    this.paymentEnv,
    this.paymentType,
    this.paymentMethod,
    this.redirectUrl,
    this.amount,
  });

  factory PaymentRequestDataModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestDataModelFromJson(json);
}

@JsonSerializable()
class ExtraData {
  @JsonKey(name: "zp_trans_token")
  String? zpTransToken;
  @JsonKey(name: "order_token")
  String? orderToken;

  ExtraData({
    this.zpTransToken,
    this.orderToken,
  });

  ExtraData copyWith({
    String? zpTransToken,
    String? orderToken,
  }) =>
      ExtraData(
        zpTransToken: zpTransToken ?? this.zpTransToken,
        orderToken: orderToken ?? this.orderToken,
      );

  factory ExtraData.fromJson(Map<String, dynamic> json) =>
      _$ExtraDataFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraDataToJson(this);
}
