import 'package:flutter/material.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';

enum HistoryTransactionType {
  payBill('pay_bill'),
  payIn('pay_in'),
  reservationDeposit('reservation_deposit'),
  manual('manual'),
  reservationRefund('reservation_refund');

  const HistoryTransactionType(this.type);

  final String type;

  static HistoryTransactionType? fromTypeStatus(String? type) {
    try {
      return HistoryTransactionType.values
          .firstWhere((element) => type == element.type);
    } catch (e) {
      return null;
    }
  }

  String get title {
    switch (this) {
      case HistoryTransactionType.payBill:
        return S.text?.history_pay_bill??'';
      case HistoryTransactionType.reservationDeposit:
        return S.text?.history_reservation_deposit??'';
      case HistoryTransactionType.manual:
        return S.text?.history_manual??'';
      case HistoryTransactionType.reservationRefund:
        return S.text?.history_reservation_refund??'';
      case HistoryTransactionType.payIn:
        return S.text?.history_reservation_pay_in??'';
    }
  }
  String get icon {
    switch (this) {
      case HistoryTransactionType.payBill:
        return IcSvg.icHistoryBill;
      case HistoryTransactionType.reservationDeposit:
        return IcSvg.icHistoryBill;
      case HistoryTransactionType.manual:
        return IcSvg.icHistoryBill;
      case HistoryTransactionType.reservationRefund:
        return IcSvg.icHistoryBill;
      case HistoryTransactionType.payIn:
        return IcSvg.icHistoryDiamond;
    }
  }
}
