import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/utils/schedule_utility.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

import '../../../theme/colors.dart';

class DatePickerTimeLine<T> extends StatefulWidget {
  final DateTime? selectedDate;
  final double height;
  final ValueChanged<DateTime>? onSelectDate;
  final ValueChanged<List<DateTime>>? onScrollWeek; // return monday of week
  final List<T> Function(DateTime day)? eventLoader;
  final DateTime? lastDay;
  final DateTime? firstDay;

  const DatePickerTimeLine(
      {Key? key,
      this.height = 56,
      this.firstDay,
      this.lastDay,
      this.selectedDate,
      this.onSelectDate,
      this.onScrollWeek,
      this.eventLoader})
      : super(key: key);

  @override
  State<DatePickerTimeLine<T>> createState() => _DatePickerTimeLineState<T>();
}

class _DatePickerTimeLineState<T> extends State<DatePickerTimeLine<T>> {
  ThemeData get theme => Theme.of(context);

  late PageController _controller;
  int countShow = 7;

  late DateTime _selectedDate;
  int _initialPage = 0;
  DateTime _firstMondayOfYear = ScheduleUtility.getFirstMondayOfYear();
  DateTime _lastSundayOfYear = ScheduleUtility.getLastSundayOfYear();
  int totalWeekOfYear = 0;
  Timer? _debounce;
  late bool _pageCallbackDisabled;

  @override
  void initState() {
    _selectedDate = widget.selectedDate ?? DateTime.now();
    totalWeekOfYear = ScheduleUtility.getTotalWeekOfYear(date: _selectedDate);
    _firstMondayOfYear =
        ScheduleUtility.getFirstMondayOfYear(date: _selectedDate);
    _lastSundayOfYear =
        ScheduleUtility.getLastSundayOfYear(date: _selectedDate);
    _initialPage = _getInitPage(_selectedDate);
    _controller = PageController(initialPage: _initialPage);
    _pageCallbackDisabled = false;
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant DatePickerTimeLine<T> oldWidget) {
    if (_selectedDate != widget.selectedDate) {
      _selectedDate = widget.selectedDate ?? DateTime.now();
      totalWeekOfYear = ScheduleUtility.getTotalWeekOfYear(date: _selectedDate);
      _firstMondayOfYear =
          ScheduleUtility.getFirstMondayOfYear(date: _selectedDate);
      _lastSundayOfYear =
          ScheduleUtility.getLastSundayOfYear(date: _selectedDate);
      final pageOld = _initialPage;
      final pageNow = _getInitPage(_selectedDate);
      if (pageOld != pageNow) {
        _controller.jumpToPage(pageNow);
        _pageCallbackDisabled = true;
      }
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: PageView.builder(
        onPageChanged: (index) {
          if (!_pageCallbackDisabled) {
            _initialPage = index;
            final startDateOfWeek =
                _firstMondayOfYear.add(Duration(days: 7 * index));
            widget.onScrollWeek?.call(List.generate(countShow,
                (index) => startDateOfWeek.add(Duration(days: index))));
          }
          _pageCallbackDisabled = false;

          // if (_debounce?.isActive ?? false) _debounce?.cancel();
          // _debounce = Timer(const Duration(milliseconds: 500), () {
          //   _initialPage = index;
          //   final startDateOfWeek =
          //       firstMondayOfYear.add(Duration(days: 7 * index));
          //   widget.onScrollWeek?.call(List.generate(countShow,
          //       (index) => startDateOfWeek.add(Duration(days: index))));
          // });
        },
        controller: _controller,
        itemCount: totalWeekOfYear,
        itemBuilder: (context, index) {
          final startDateOfWeek =
              _firstMondayOfYear.add(Duration(days: 7 * index));
          return _buildRowDatePicker(startDateOfWeek);
        },
      ),
    );
  }

  Widget _buildRowDatePicker(DateTime startDateOfWeek) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setStateBuilder) {
      return SeparatedRow(
        separatorBuilder: () => const SizedBox(width: 8),
        children: List.generate(countShow, (index) {
          DateTime date = startDateOfWeek.add(Duration(days: index));
          var isSelected = date.isSameDate(_selectedDate);
          final events = widget.eventLoader?.call(date) ?? [];
          return Expanded(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  setStateBuilder(() {});
                  _selectedDate = date;
                  widget.onSelectDate?.call(date);
                },
                child: Ink(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(8),
                    border: isSelected
                        ? Border.all(
                            color: AppColors.primaryColor,
                            width: 0.5,
                          )
                        : null,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        date.toDateLocale('EEE'),
                        maxLines: 1,
                        style: AppTextStyle.smallTextRegular.copyWith(
                          color: GreyColor.grey500,
                        ),
                      ),
                      Text(
                        date.toDateLocale('dd'),
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: AppFonts.beVietnamPro,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            height: 28 / 20,
                            color: date.isSameDate(DateTime.now())
                                ? AppColors.green2
                                :  GreyColor.grey2),
                      ),
                      _buildDotEvent(events.isNotEmpty)
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      );
    });
  }

  Widget _buildDotEvent(bool visible) => Visibility(
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        visible: visible,
        child: Container(
          height: 6,
          width: 6,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
        ),
      );

  int _getInitPage(DateTime data) =>
      totalWeekOfYear - ((_lastSundayOfYear.difference(data).inDays) ~/ 7 + 1);
}
