import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/theme/colors.dart';

class BookingBadgeCountDown extends StatefulWidget {
  final DateTime endTime;

  const BookingBadgeCountDown({
    super.key,
    required this.endTime,
  });

  @override
  State<BookingBadgeCountDown> createState() => _BookingBadgeCountDownState();
}

class _BookingBadgeCountDownState extends State<BookingBadgeCountDown> {
  Timer? _timer;
  num durationSecond = 0;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {});
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Đến hẹn sau: ${AppUtils.formatHHMMSS(widget.endTime.difference(DateTime.now()).inSeconds, showSeconds: true)}',
      style: const TextStyle(fontSize: 12, color: AppColors.gray5),
    );
  }
}
