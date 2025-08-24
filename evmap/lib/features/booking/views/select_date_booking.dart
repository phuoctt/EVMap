import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/data/model/booking_request.dart';
import 'package:rabbitevc/features/booking/cubit/booking_cubit.dart';
import 'package:rabbitevc/features/booking/screens/book_info_screen.dart';
import 'package:rabbitevc/features/booking/widgets/booking_time_widget.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';

enum DateBookingType {
  node,
  start,
  end,
}

class PopupSelectDateBooking extends StatefulWidget {
  final DateTime? selectDate;
  final ConnectorsModel? connector;
  final ChargeBoxModel? data;

  const PopupSelectDateBooking({
    super.key,
    this.selectDate,
    this.connector,
    this.data,
  });

  static Future<T?> show<T>({
    required BookingCubit cubit,
    DateTime? selectDate,
    ConnectorsModel? connector,
    ChargeBoxModel? data,
  }) =>
      showModalBottomSheet(
        context: navigatorKey.currentContext!,
        backgroundColor: GreyColor.grey800,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        builder: (BuildContext context) {
          return BlocProvider.value(
            value: cubit,
            child: Wrap(
              children: [
                PopupSelectDateBooking(
                  selectDate: selectDate,
                  connector: connector,
                  data: data,
                )
              ],
            ),
          );
        },
      );

  @override
  State<PopupSelectDateBooking> createState() => _PopupSelectDateBookingState();
}

class _PopupSelectDateBookingState extends State<PopupSelectDateBooking> {
  late DateTime _timeStart;
  late DateTime _timeEnd;
  final ValueNotifier<DateBookingType> _typeValue =
      ValueNotifier(DateBookingType.node);
  DateTime now = DateTime.now();
  late DateTime selectDate;

  BookingCubit get _cubit => BlocProvider.of(context);

  @override
  void initState() {
    selectDate = widget.selectDate ?? DateTime.now();
    _initData();
    super.initState();
  }

  void _initData() {
    bool isSame = now.isSameDate(selectDate) && selectDate.hour <= now.hour;

    _timeStart = DateTime(selectDate.year, selectDate.month, selectDate.day,
        (isSame ? now.hour + 1 : selectDate.hour));
    _timeEnd = DateTime(
        _timeStart.year, _timeStart.month, _timeStart.day, _timeStart.hour + 1);
  }

  @override
  void dispose() {
    _typeValue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isBackTime = now.getDateOnly().isAfter(selectDate.getDateOnly());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          Text(
            S.text?.booking_time_frame ?? '',
            style: AppTextStyle.largeTextBold.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.gray5,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Material(
              color: Colors.transparent,
              child: Row(
                children: [
                  IconButton(
                      onPressed: isBackTime ? null : () => _preTime(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color:
                            isBackTime ? GreyColor.grey500 : AppColors.green2,
                      )),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '${selectDate.toDate('EEEE')} - ${selectDate.toDate('dd/MM/yyyy')}',
                          style: AppTextStyle.bodyMedium
                              .copyWith(color: AppColors.semanticColor),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          S.text?.booking_limit_note ?? '',
                          style: AppTextStyle.smallTextRegular
                              .copyWith(color: GreyColor.grey500),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: _nextTime,
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.green2,
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          ValueListenableBuilder(
              valueListenable: _typeValue,
              builder: (context, value, child) {
                return GestureDetector(
                  onTap: () {
                    _typeValue.value = DateBookingType.start;
                  },
                  child: BookingTimeWidget(
                    visible: value == DateBookingType.start,
                    title: S.text?.booking_time_start,
                    date: _timeStart,
                    onDateTimeChanged: (date) {
                      setState(() {
                        _timeStart = date.getDateOnly();
                      });
                    },
                  ),
                );
              }),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(
              height: 1,
              color: AppColors.gray5,
            ),
          ),
          ValueListenableBuilder(
              valueListenable: _typeValue,
              builder: (context, value, child) {
                return GestureDetector(
                  onTap: () {
                    _typeValue.value = DateBookingType.end;
                  },
                  child: BookingTimeWidget(
                    visible: value == DateBookingType.end,
                    title: S.text?.booking_time_end,
                    date: _timeEnd,
                    onDateTimeChanged: (date) {
                      setState(() {
                        _timeEnd = date.getDateOnly();
                      });
                    },
                  ),
                );
              }),
          const SizedBox(height: 40),
          _contentDate(),
          const SizedBox(height: 16),
          SafeArea(
            child: AppButton(
              width: double.infinity,
              title: S.text?.text_next,
              onPressed: isValidate
                  ? () {
                      final request = BookingRequest(
                        charge_box_id: widget.data?.charge_box_id,
                        connector_id: widget.connector?.connector_id,
                        start_datetime: _timeStart,
                        expiry_datetime: _timeEnd,
                      );
                      BookingInfoScreen.show(
                          data: widget.data,
                          startDate: request.start_datetime,
                          endDate: request.expiry_datetime,
                          onSubmit: () {
                            _cubit.onBooking(request);
                          });
                    }
                  : null,
            ),
          )
        ],
      ),
    );
  }

  Widget _contentDate() {
    return isValidate
        ? RichText(
            text: TextSpan(
              text: S.text?.booking_put_in,
              style: AppTextStyle.bodyMedium.copyWith(color: GreyColor.grey500),
              children: <TextSpan>[
                TextSpan(
                    text:
                        ' ${AppUtils.formatHHMMSS(_timeEnd.difference(_timeStart).inSeconds)}',
                    style:
                        AppTextStyle.bodyMedium.copyWith(color: Colors.white)),
                TextSpan(
                  text: ' ${S.text?.booking_from}',
                  style: AppTextStyle.bodyMedium
                      .copyWith(color: GreyColor.grey500),
                ),
                TextSpan(
                    text:
                        ' ${_timeStart.toDate('HH:mm')} - ${_timeEnd.toDate('HH:mm')}',
                    style:
                        AppTextStyle.bodyMedium.copyWith(color: Colors.white)),
              ],
            ),
          )
        : Text(
            S.text?.booking_time_frame_validate ?? '',
            style: AppTextStyle.bodyMedium
                .copyWith(color: AppColors.semanticColor),
          );
  }

  void _nextTime() {
    setState(() {
      selectDate = selectDate.add(const Duration(days: 1));
    });
  }

  void _preTime() {
    setState(() {
      selectDate = selectDate.subtract(const Duration(days: 1));
    });
  }

  bool get isValidate {
    return _timeStart.isAfter(
            DateTime(now.year, now.month, now.day, now.hour, now.minute)) &&
        _timeStart.isBefore(_timeEnd);
  }
}
