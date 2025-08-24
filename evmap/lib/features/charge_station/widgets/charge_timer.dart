import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';

class ChargeTimer extends StatefulWidget {
  final DateTime? eventTime;

  const ChargeTimer({
    Key? key,
    this.eventTime,
  }) : super(key: key);

  @override
  State<ChargeTimer> createState() => _ChargeTimerState();
}

class _ChargeTimerState extends State<ChargeTimer> {
  static const duration = Duration(seconds: 1);

  bool isActive = true;
  Timer? timer;
  DateTime? _eventTime;

  void handleTick() {
    setState(() {});
  }

  @override
  void initState() {
    final a = DateTime.now().toUtc();
    _eventTime = widget.eventTime;
    if (_eventTime != null) {
      Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ChargeTimer oldWidget) {
    _eventTime = widget.eventTime;
    if (_eventTime != null) {
      Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int difference = 0;
    int hours = 0;
    int minutes = 0;
    int seconds = 0;
    if (_eventTime != null) {
      difference = DateTime.now()
          .toUtc()
          .getDateOnly()
          .difference(_eventTime.getDateOnly())
          .inSeconds;
      hours = difference ~/ (60 * 60) % 24;
      minutes = (difference ~/ 60) % 60;
      seconds = difference % 60;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          'Thời gian sạc',
          style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.6)),
        ),
      ],
    );
  }
}
