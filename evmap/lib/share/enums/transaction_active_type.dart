import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';

enum TransactionActiveType {
  active(),
  booking(),
  notPay();

  const TransactionActiveType();

  String get icon {
    switch (this) {
      case TransactionActiveType.active:
        return IcSvg.icHomeBadge;
      case TransactionActiveType.booking:
        return IcSvg.icHomeBooking;
      case TransactionActiveType.notPay:
        return IcSvg.icHistoryBill;
    }
  }

  String? get title {
    switch (this) {
      case TransactionActiveType.active:
        return S.text?.home_badge_description;
      case TransactionActiveType.booking:
        return '';
      case TransactionActiveType.notPay:
        return S.text?.home_badge_bill_description;
    }
  }
}
