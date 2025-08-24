import 'package:flutter/material.dart';
import 'package:rabbitevc/features/booking/screens/reason_cancel_booking_screen.dart';
import 'package:rabbitevc/features/booking/widgets/booking_regulations.dart';
import 'package:rabbitevc/features/charge_station/screens/charge_screen.dart';
import 'package:rabbitevc/features/charge_station/widgets/charge_box_name.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/app_outlined_button.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import 'package:rabbitevc/widget/appbar.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class BookingInfoScreen extends StatefulWidget {
  final num? idBooking;
  final ChargeBoxModel? data;
  final ConnectorsModel? connector;

  // final BookingRequest? request;
  final GestureTapCallback? onSubmit;
  final DateTime? startDate;
  final DateTime? endDate;
  final bool isCancelBooking;

  const BookingInfoScreen({
    super.key,
    this.data,
    this.idBooking,
    this.connector,
    this.startDate,
    this.endDate,
    // this.request,
    this.onSubmit,
    this.isCancelBooking = false,
  });

  static Future<T?> show<T>({
    ChargeBoxModel? data,
    GestureTapCallback? onSubmit,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return showGeneralDialog(
      context: navigatorKey.currentContext!,
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (context, __, ___) {
        return BookingInfoScreen(
          data: data,
          startDate: startDate,
          endDate: endDate,
          onSubmit: onSubmit,
        );
      },
    );
    // return showModalBottomSheet(
    //   context: navigatorKey.currentContext!,
    //   backgroundColor: GreyColor.grey800,
    //   isScrollControlled: true,
    //   // useSafeArea: true,
    //   builder: (BuildContext context) {
    //     return BookingInfoScreen(
    //       data: data,
    //       request: request,
    //     );
    //   },
    // );
  }

  @override
  State<BookingInfoScreen> createState() => _BookingInfoScreenState();
}

class _BookingInfoScreenState extends State<BookingInfoScreen> {
  ChargeBoxModel? _data;

  @override
  void initState() {
    _data = widget.data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: BaseAppBar(
        title: S.text?.booking_details,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ChargeBoxName(data: _data),
              const SizedBox(height: 16),
              _boxDetail(),
              const SizedBox(height: 16),
              const BookingRegulation(),
              const SizedBox(height: 16),
              _buildBottomWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomWidget() {
    return !widget.isCancelBooking
        ? AppButton(
            title: S.text?.booking_confirm,
            width: double.infinity,
            onPressed: widget.onSubmit,
          )
        : Row(
            children: [
              Expanded(
                child: AppOutLinedButton.large(
                  height: 44,
                  width: double.infinity,
                  color: AppColors.red2,
                  title: S.text?.booking_cancel,
                  style:
                      AppTextStyle.bodyMedium.copyWith(color: AppColors.red2),
                  onPressed: () {
                    pushNamed(
                      ReasonCancelBookingScreen.route,
                      arguments: {'idBooking': widget.idBooking},
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: AppButton(
                  height: 44,
                  title: S.text?.booking_charge_now,
                  width: double.infinity,
                  style:
                      AppTextStyle.bodyMedium.copyWith(color: AppColors.green3),
                  onPressed: () {
                    final index = widget.data?.connectors?.indexWhere(
                        (element) =>
                            element.connector_id ==
                            widget.connector?.connector_id);
                    if ((index ?? -1) >= 0) {
                      pushNamed(ChargeScreen.route,
                          arguments: {'data': widget.data, 'index': index});
                    }
                  },
                ),
              ),
            ],
          );
  }

  Widget _boxDetail() {
    return AppCardBox(
      icon: IcSvg.icBookingInfo,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SeparatedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          separatorBuilder: () => const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(height: 1, color: GreyColor.grey700),
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.text?.booking_total_time ?? '',
                    style: AppTextStyle.bodyMedium
                        .copyWith(color: GreyColor.grey500)),
                const SizedBox(height: 10),
                const Divider(color: GreyColor.grey700, height: 1),
                const SizedBox(height: 16),
                _buildTime(
                    time: widget.startDate, title: S.text?.booking_time_start),
                const SizedBox(height: 16),
                _buildTime(
                    time: widget.endDate, title: S.text?.booking_time_end),
                const SizedBox(height: 2),
              ],
            ),
            SeparatedColumn(
                separatorBuilder: () => const SizedBox(height: 12),
                children: [
                  _buildContent(
                      title: S.text?.booking_total_time,
                      content: AppUtils.formatHHMMSS(
                          (widget.endDate ?? DateTime.now())
                              .difference(widget.startDate ?? DateTime.now())
                              .inSeconds)),
                  _buildContent(
                      title: S.text?.booking_become_a_point,
                      content: '20.000 điểm'),
                ]),
          ],
        ),
      ),
    );
  }

  Widget _buildTime({DateTime? time, String? title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              time.toDate('HH:mm'),
              style: const TextStyle(
                  fontFamily: AppFonts.beVietnamPro,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  height: 30 / 20),
            ),
            const SizedBox(width: 6),
            Text(
              time.toDate('dd/MM/yyyy'),
              style: const TextStyle(
                  fontFamily: AppFonts.beVietnamPro,
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  height: 30 / 14),
            )
          ],
        ),
        const SizedBox(height: 2),
        Text(
          title ?? '',
          style:
              AppTextStyle.smallTextRegular.copyWith(color: GreyColor.grey500),
        )
      ],
    );
  }

  Widget _buildContent(
      {String? title, String? content, Widget? contentWidget}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? '',
          style:
              AppTextStyle.smallTextRegular.copyWith(color: GreyColor.grey500),
        ),
        const SizedBox(width: 16),
        Flexible(
          child: contentWidget ??
              Text(
                content ?? '',
                style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
              ),
        ),
      ],
    );
  }
}
