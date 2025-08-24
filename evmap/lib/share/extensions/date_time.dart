import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String toDateLocale(format) {
    try {
      return DateFormat(format, 'vi')
          .format(this!.add(const Duration(hours: 7)));
    } catch (e) {
      return '';
    }
  }
  DateTime? toTimeZones() {
    try {
      return this!.add(const Duration(hours: 7));
    } catch (e) {
      return null;
    }
  }
  String toDate(format) {
    try {
      return DateFormat(format, 'vi').format(this!);
    } catch (e) {
      return '';
    }
  }

  bool isSameDate(DateTime? other) {
    return this?.year == other?.year &&
        this?.month == other?.month &&
        this?.day == other?.day;
  }

  DateTime getDateOnly() {
    final now = DateTime.now();
    return DateTime(
      this?.year ?? now.year,
      this?.month ?? now.month,
      this?.day ?? now.day,
      this?.hour ?? now.hour,
      this?.minute ?? now.minute,
      this?.second ?? now.second,
    );
  }
}
