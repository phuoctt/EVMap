// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rabbitevc/features/booking/screens/book_info_screen.dart';
// import 'package:rabbitevc/features/profile/profile/cubit/profile_cubit.dart';
// import 'package:rabbitevc/route/navigator.dart';
// import 'package:rabbitevc/share/extensions/date_time.dart';
// import 'package:rabbitevc/share/utils/app_utils.dart';
// import 'package:rabbitevc/theme/style.dart';
// import 'package:rabbitevc/widget/app_cicular_indicator.dart';
// // import 'package:syncfusion_flutter_calendar/calendar.dart';
// import 'package:rabbitevc/features/booking/cubit/booking_cubit.dart';
// import 'package:rabbitevc/features/booking/cubit/booking_state.dart';
// import 'package:rabbitevc/features/booking/views/select_date_booking.dart';
// import 'package:rabbitevc/models/booking/slot_model.dart';
// import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
// import 'package:rabbitevc/share/utils/localization_utils.dart';
// import 'package:rabbitevc/theme/colors.dart';
// import 'package:rabbitevc/theme/fonts.dart';
// import 'package:rabbitevc/widget/app_scaffold.dart';
// import 'package:rabbitevc/widget/appbar.dart';
// import 'package:rabbitevc/widget/date_picker_timeline.dart';
// import 'package:rabbitevc/widget/loading_screen.dart';
// import 'package:rabbitevc/widget/notify_dialog.dart';
//
// s
//
// // class BookingChargingScreen extends StatefulWidget {
// //   final ConnectorsModel? connector;
// //   final ChargeBoxModel? data;
// //   static const route = '/booking_charging';
// //
// //   const BookingChargingScreen({
// //     super.key,
// //     this.connector,
// //     this.data,
// //   });
// //
// //   @override
// //   State<BookingChargingScreen> createState() => _BookingChargingScreenState();
// // }
// //
// // class _BookingChargingScreenState extends State<BookingChargingScreen> {
// //   // final ValueNotifier<DateTime> _selectedValue = ValueNotifier(DateTime.now());
// //   //
// //   // BookingCubit get _cubit => BlocProvider.of(context);
// //   // final CalendarController _calendarController = CalendarController();
// //   // List<SlotDataModel> slots = List.from([]);
// //   // final colorMe = AppColors.green2;
// //   // final colorNotMe = GreyColor.grey700;
// //
// //   @override
// //   void initState() {
// //     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
// //       _onLoadSlots();
// //     });
// //     super.initState();
// //   }
// //
// //   // void _onLoadSlots({bool isLoading = true}) {
// //   //   _cubit.onLoadSlots(
// //   //       connector: widget.connector,
// //   //       chargeBox: widget.data,
// //   //       isLoading: isLoading,
// //   //       dateTime: _selectedValue.value);
// //   // }
// //
// //   // @override
// //   // void dispose() {
// //   //   _selectedValue.dispose();
// //   //   _calendarController.dispose();
// //   //   super.dispose();
// //   // }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return BlocListener<BookingCubit, BookingState>(
// //       listener: (context, state) {
// //         LoadingScreen.close();
// //         state.whenOrNull(
// //             loadingScreen: () => LoadingScreen.show(),
// //             bookingSuccess: _onSuccess,
// //             error: (err) {
// //               NotifyDialog.showMessage(content: err);
// //             });
// //       },
// //       child: AppScaffold(
// //         appBar: BaseAppBar(
// //           title: S.text?.booking_title,
// //         ),
// //         body: ValueListenableBuilder(
// //             valueListenable: _selectedValue,
// //             builder: (context, value, child) {
// //               return SafeArea(
// //                 minimum: const EdgeInsets.only(bottom: 16),
// //                 child: Column(
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.symmetric(horizontal: 16),
// //                       child: DatePickerTimeLine(
// //                         height: 60,
// //                         selectedDate: value,
// //                         onScrollWeek: _onScrollWeek,
// //                         onSelectDate: _onSelectDate,
// //                         // eventLoader: (day) => _getEventsForDay(day, _data),
// //                       ),
// //                     ),
// //                     const SizedBox(height: 12),
// //                     Text(value.toDate('EEEE - dd/MM/yyyy'),
// //                         style: const TextStyle(
// //                             fontFamily: AppFonts.beVietnamPro,
// //                             fontSize: 14,
// //                             color: AppColors.semanticColor,
// //                             fontWeight: FontWeight.w500,
// //                             height: 22 / 14)),
// //                     const SizedBox(height: 16),
// //                     Expanded(
// //                         child: Padding(
// //                       padding: const EdgeInsets.symmetric(horizontal: 16),
// //                       child: BlocBuilder<BookingCubit, BookingState>(
// //                         buildWhen: (prev, current) =>
// //                             current is BookingLoading ||
// //                             current is BookingSlotsLogged,
// //                         builder: (_, state) {
// //                           bool isLoading = false;
// //                           state.whenOrNull(loading: () {
// //                             isLoading = true;
// //                           }, slotsLogged: (val) {
// //                             isLoading = false;
// //                             slots = List.from(val);
// //                           });
// //                           return _buildCalendar(slots, isLoading: isLoading);
// //                         },
// //                       ),
// //                     )),
// //                   ],
// //                 ),
// //               );
// //             }),
// //       ),
// //     );
// //   }
// //
// //   void _onSuccess(SlotDataModel? item) {
// //     pop();
// //     pop();
// //     NotifyDialog.showMessage(
// //         content: S.text?.booking_success, isWillPop: false, onPressed: () {});
// //     // if (item != null) _cubit.onLoadSlotsLocal(data: slots, item: item);
// //     if (item != null) _onLoadSlots();
// //   }
// //
// //   Widget _buildCalendar(List<SlotDataModel> slots, {bool isLoading = false}) {
// //     return Stack(
// //       children: [
// //         SfCalendar(
// //           controller: _calendarController,
// //           viewNavigationMode: ViewNavigationMode.none,
// //           view: CalendarView.day,
// //           headerHeight: 0,
// //           viewHeaderHeight: 0,
// //           onTap: (calendarTapDetails) {
// //             PopupSelectDateBooking.show(
// //                 cubit: _cubit,
// //                 selectDate: calendarTapDetails.date,
// //                 data: widget.data,
// //                 connector: widget.connector);
// //           },
// //           onSelectionChanged: (calendarTapDetails) {
// //             print('object');
// //           },
// //           appointmentBuilder: _appointmentWidget,
// //           onViewChanged: (viewChangedDetails) {
// //             _selectedValue.value = viewChangedDetails.visibleDates.first;
// //           },
// //           dataSource:
// //               MeetingDataSource(_getDataSource(_selectedValue.value, slots)),
// //           cellBorderColor: AppColors.gray5,
// //           timeSlotViewSettings: TimeSlotViewSettings(
// //               timeIntervalHeight: 60,
// //               timeFormat: 'HH:mm',
// //               timeTextStyle: AppTextStyle.bodySmall
// //                   .copyWith(color: const Color(0xff7A7A7A))),
// //           monthViewSettings: const MonthViewSettings(
// //               appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
// //         ),
// //         if (isLoading) const AppCicularIndicator()
// //       ],
// //     );
// //   }
// //
// //   Widget _appointmentWidget(
// //       BuildContext context, CalendarAppointmentDetails details) {
// //     final meeting = List<Meeting>.from(details.appointments).first;
// //     final isMe = meeting.background == colorMe;
// //     final from = meeting.from;
// //     final to = meeting.to;
// //
// //     return GestureDetector(
// //       onTap: () {
// //         if (isMe) _openInfoBooking(meeting);
// //       },
// //       child: Container(
// //         decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(8),
// //             color: isMe ? colorMe : colorNotMe),
// //         child: Center(
// //             child: Text(
// //           (isMe
// //                   ? S.text?.booking_content_me(
// //                           AppUtils.formatHHMMSS(to.difference(from).inSeconds),
// //                           '${from.toDate('HH:mm')}-${to.toDate('HH:mm')}') ??
// //                       ''
// //                   : S.text?.booking_content_other(
// //                       '${from.toDate('HH:mm')}-${to.toDate('HH:mm')}')) ??
// //               '',
// //           textAlign: TextAlign.center,
// //           style: AppTextStyle.bodyMedium
// //               .copyWith(color: isMe ? const Color(0xff101910) : Colors.white),
// //         )),
// //       ),
// //     );
// //   }
// //
// //   void _openInfoBooking(Meeting meeting) async {
// //     await push(BookingInfoScreen(
// //       data: widget.data,
// //       connector: widget.connector,
// //       startDate: meeting.from,
// //       endDate: meeting.to,
// //       isCancelBooking: true,
// //       idBooking: num.parse(meeting.eventName),
// //     ));
// //     _onLoadSlots(isLoading: false);
// //   }
// //
// //   List<Meeting> _getDataSource(DateTime value, List<SlotDataModel> data) {
// //     final List<Meeting> meetings = <Meeting>[];
// //     for (final item in data) {
// //       final isMe =
// //           BlocProvider.of<ProfileCubit>(context).user?.id == item.userId;
// //       if (item.startDatetime != null && item.expiryDatetime != null) {
// //         meetings.add(Meeting(
// //             '${item.id ?? 0}',
// //             item.startDatetime.toTimeZones()!,
// //             item.endDatetime.toTimeZones()!,
// //             isMe ? colorMe : colorNotMe,
// //             false));
// //       }
// //     }
// //
// //     return meetings;
// //   }
// //
// //   void _onScrollWeek(List<DateTime> dates) {
// //     _selectedValue.value = dates.first;
// //     _calendarController.displayDate = _selectedValue.value;
// //     _onLoadSlots();
// //   }
// //
// //   void _onSelectDate(DateTime dateTime) {
// //     _selectedValue.value = dateTime;
// //     _calendarController.displayDate = _selectedValue.value;
// //     _onLoadSlots();
// //   }
// // }
// //
// // /// An object to set the appointment collection data source to calendar, which
// // /// used to map the custom appointment data to the calendar appointment, and
// // /// allows to add, remove or reset the appointment collection.
// // class MeetingDataSource extends CalendarDataSource {
// //   /// Creates a meeting data source, which used to set the appointment
// //   /// collection to the calendar
// //   MeetingDataSource(List<Meeting> source) {
// //     appointments = source;
// //   }
// //
// //   @override
// //   DateTime getStartTime(int index) {
// //     return _getMeetingData(index).from;
// //   }
// //
// //   @override
// //   DateTime getEndTime(int index) {
// //     return _getMeetingData(index).to;
// //   }
// //
// //   @override
// //   String getSubject(int index) {
// //     return _getMeetingData(index).eventName;
// //   }
// //
// //   @override
// //   Color getColor(int index) {
// //     return _getMeetingData(index).background;
// //   }
// //
// //   @override
// //   bool isAllDay(int index) {
// //     return _getMeetingData(index).isAllDay;
// //   }
// //
// //   Meeting _getMeetingData(int index) {
// //     final dynamic meeting = appointments![index];
// //     late final Meeting meetingData;
// //     if (meeting is Meeting) {
// //       meetingData = meeting;
// //     }
// //
// //     return meetingData;
// //   }
// // }
// //
// // /// Custom business object class which contains properties to hold the detailed
// // /// information about the event data which will be rendered in calendar.
// // class Meeting {
// //   /// Creates a meeting class with required details.
// //   Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);
// //
// //   /// Event name which is equivalent to subject property of [Appointment].
// //   String eventName;
// //
// //   /// From which is equivalent to start time property of [Appointment].
// //   DateTime from;
// //
// //   /// To which is equivalent to end time property of [Appointment].
// //   DateTime to;
// //
// //   /// Background which is equivalent to color property of [Appointment].
// //   Color background;
// //
// //   /// IsAllDay which is equivalent to isAllDay property of [Appointment].
// //   bool isAllDay;
// // }
