
import 'package:rabbitevc/share/extensions/date_time.dart';

mixin ScheduleUtility {
  static DateTime getTimeRound(DateTime? date) {
    var now = date ?? DateTime.now();
    var hour = now.minute > 30 ? now.hour + 1 : now.hour;
    var minute = now.minute > 30 ? 00 : 30;
    return DateTime(now.year, now.month, now.day, hour, minute);
  }

  static int getWeekOfYear(DateTime date) {
    return getTotalWeekOfYear(date:date) -
        ((getLastSundayOfYear(date:date).difference(date).inDays) ~/ 7 + 1);
  }

  static DateTime getFirstMondayOfYear({DateTime? date}) {
    final dateTime = date ?? DateTime.now();
    DateTime now = DateTime(dateTime.year, 1, 1);
    int currentDay = now.weekday;
    DateTime firstDayOfWeek = now.subtract(Duration(days: currentDay - 1));
    if (firstDayOfWeek.year < now.year) {
      firstDayOfWeek = firstDayOfWeek.add(const Duration(days: 7));
    }
    return firstDayOfWeek;
  }

  static DateTime getLastSundayOfYear({DateTime? date}) {
    final dateTime = date ?? DateTime.now();
    DateTime now = DateTime(dateTime.year, 12, 31);
    int currentDay = now.weekday;
    DateTime lastDayOfWeek = now.subtract(Duration(days: currentDay));
    if (lastDayOfWeek.compareTo(now) == -1) {
      lastDayOfWeek = lastDayOfWeek.add(const Duration(days: 7));
    }
    return lastDayOfWeek;
  }

  static int getTotalWeekOfYear({DateTime? date}) {
    int totalWeekOfYear = (getLastSundayOfYear(date: date)
                .difference(getFirstMondayOfYear(date: date))
                .inDays +
            1) ~/
        7;
    return totalWeekOfYear;
  }

  static DateTime getMondayOfWeek(DateTime date) {
    var monday = 1;
    var now = date.getDateOnly();

    while (now.weekday != monday) {
      now = now.subtract(const Duration(days: 1));
    }
    return now;
  }

  static DateTime getSundayOfWeek(DateTime date) {
    var sunday = 7;
    var now = date.getDateOnly();

    while (now.weekday != sunday) {
      now = now.add(const Duration(days: 1));
    }
    return now;
  }
}
