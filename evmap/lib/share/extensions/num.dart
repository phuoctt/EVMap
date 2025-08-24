// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:intl/intl.dart';

extension NumExtension on num? {
  String? toCurrency() {
    try {
      final oCcy = NumberFormat("#,##0", "en_US");
      return oCcy.format(this ?? '');
    } catch (e) {
      return '';
    }
  }

  String? toValue() {
    try {
      return this?.isInt == true
          ? NumberFormat("#,##0", "en_US").format(this ?? '')
          // : this?.toStringAsFixed(2) ?? '';
          : NumberFormat("#,##0.00", "en_US")
              .format(double.parse(this?.toStringAsFixed(2) ?? '0'));
    } catch (e) {
      return '';
    }
  }

  bool get isInt => ((this ?? 0) % 1) == 0;
}
