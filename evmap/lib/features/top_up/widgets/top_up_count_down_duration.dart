import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';

class TopUpCountDownDuration extends StatefulWidget {
  final num? duration;

  const TopUpCountDownDuration({
    super.key,
    this.duration,
  });

  @override
  State<TopUpCountDownDuration> createState() => _TopUpCountDownDurationState();
}

class _TopUpCountDownDurationState extends State<TopUpCountDownDuration> {
  Timer? _timer;
  num durationSecond = 0;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (durationSecond == 0) {
          setState(() {
            timer.cancel();
            pop();
            NotifyDialog.showMessage(content: S.text?.excharge_payment_time_expires);
          });
        } else {
          setState(() {
            durationSecond--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    durationSecond = widget.duration ?? 0;
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
    if (durationSecond <= 0) return const SizedBox();

    final sec = durationSecond % 60;
    final min = (durationSecond / 60).floor();
    final hours = (min / 60).floor();

    final hour = hours.toString().length <= 1 ? "0$hours" : "$hours";

    final minute = min.toString().length <= 1 ? "0$min" : "$min";
    final second = sec.toString().length <= 1 ? "0$sec" : "$sec";
    return Text('$minute:$second',style: AppTextStyle.textLink,);
  }
}
