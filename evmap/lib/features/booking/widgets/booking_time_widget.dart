import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';

class BookingTimeWidget extends StatefulWidget {
  final DateTime date;
  final String? title;
  final bool visible;
  final ValueChanged<DateTime>? onDateTimeChanged;
  final DateTime? maximumDate;
  final DateTime? minimumDate;

  const BookingTimeWidget(
      {super.key,
      this.title,
      required this.date,
      this.visible = false,
      this.maximumDate,
      this.minimumDate,
      this.onDateTimeChanged});

  @override
  State<BookingTimeWidget> createState() => _BookingTimeWidgetState();
}

class _BookingTimeWidgetState extends State<BookingTimeWidget> {
  late DateTime _selectDate;

  @override
  void initState() {
    _selectDate = widget.date;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTime(),
        Visibility(
          visible: widget.visible,
          child: SizedBox(
            height: 148,
            width: double.infinity,
            child: CupertinoTheme(
              data: CupertinoThemeData(
                textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle:
                        AppTextStyle.bodyMedium.copyWith(color: Colors.white)),
              ),
              child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.time,
                  use24hFormat: true,
                  minuteInterval: 30,
                  maximumDate: widget.maximumDate,
                  minimumDate: widget.minimumDate,
                  initialDateTime: _selectDate,
                  backgroundColor: const Color(0xff151924),
                  onDateTimeChanged: (val) {
                    setState(() {
                      _selectDate = val;
                      widget.onDateTimeChanged?.call(_selectDate);
                    });
                  }),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTime() {
    return Row(
      children: [
        Text(
          widget.title ?? '',
          style: AppTextStyle.bodyMedium.copyWith(
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _BoxTime(
                date: _selectDate,
                format: 'HH',
                visible: widget.visible,
              ),
              const SizedBox(width: 12),
              Text(
                S.text?.booking_hour ?? '',
                style: AppTextStyle.bodyMedium.copyWith(
                  color: GreyColor.grey500,
                ),
              ),
              const SizedBox(width: 12),
              _BoxTime(
                  date: _selectDate, format: 'mm', visible: widget.visible),
              const SizedBox(width: 12),
              Text(
                S.text?.booking_minute ?? '',
                style: AppTextStyle.bodyMedium.copyWith(
                  color: GreyColor.grey500,
                ),
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
      ],
    );
  }
}

class _BoxTime extends StatelessWidget {
  final DateTime date;
  final String format;
  final bool visible;

  const _BoxTime(
      {super.key,
      required this.date,
      required this.format,
      this.visible = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 23),
      decoration: BoxDecoration(
          color: AppColors.gray5,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: visible ? AppColors.green2 : GreyColor.grey700,
          )),
      child: Text(
        date.toDate(format),
        style: const TextStyle(
            fontFamily: AppFonts.beVietnamPro,
            fontSize: 24,
            color: GreyColor.grey2,
            fontWeight: FontWeight.w600,
            height: 32 / 24),
      ),
    );
  }
}
