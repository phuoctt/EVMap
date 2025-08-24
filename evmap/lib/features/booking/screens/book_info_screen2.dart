import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/booking/cubit/booking_cubit.dart';
import 'package:rabbitevc/features/booking/screens/reason_cancel_booking_screen.dart';
import 'package:rabbitevc/features/booking/widgets/booking_regulations.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/screens/charge_screen.dart';
import 'package:rabbitevc/features/charge_station/widgets/charge_box_name.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/booking/booking_model.dart';
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

class BookingInfoScreen2 extends StatefulWidget {
  static const route = '/booking_info';

  final bool isCancelBooking;
  final BookingModel? bookingModel;

  const BookingInfoScreen2({
    super.key,
    this.isCancelBooking = true,
    this.bookingModel,
  });

  @override
  State<BookingInfoScreen2> createState() => _BookingInfoScreen2State();
}

class _BookingInfoScreen2State extends State<BookingInfoScreen2> {
  ChargeBoxModel? _data;
  BookingModel? bookingModel;

  ChargeStationCubit get _chargeCubit => BlocProvider.of(context);

  BookingCubit get _bookingCubit => BlocProvider.of(context);

  @override
  void initState() {
    bookingModel = widget.bookingModel;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _chargeCubit.onLoadDetailChargeBox(bookingModel?.chargeBoxId);
    });
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
        child: BlocBuilder<ChargeStationCubit, ChargeStationState>(
          buildWhen: (prev, current) => current is ChargeBoxLogged,
          builder: (_, state) {
            state.whenOrNull(chargeBox: (val) {
              _data = val;
            });
            return SingleChildScrollView(
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
            );
          },
        ),
      ),
    );
  }

  Widget _buildBottomWidget() {
    return !widget.isCancelBooking
        ? AppButton(
            title: S.text?.booking_confirm,
            width: double.infinity,
            // onPressed: widget.onSubmit,
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
                      arguments: {'idBooking': bookingModel?.id},
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
                  onPressed: _data?.connectors?.isNotEmpty == true
                      ? () {
                          final index = _data?.connectors?.indexWhere(
                              (element) =>
                                  element.connector_id ==
                                  bookingModel?.connectorId);
                          if ((index ?? -1) >= 0) {
                            pushNamed(ChargeScreen.route,
                                arguments: {'data': _data, 'index': index});
                          }
                        }
                      : null,
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
                    time: bookingModel?.startDatetime.toTimeZones(),
                    title: S.text?.booking_time_start),
                const SizedBox(height: 16),
                _buildTime(
                    time: bookingModel?.endDatetime.toTimeZones(),
                    title: S.text?.booking_time_end),
                const SizedBox(height: 2),
              ],
            ),
            SeparatedColumn(
                separatorBuilder: () => const SizedBox(height: 12),
                children: [
                  _buildContent(
                      title: S.text?.booking_total_time,
                      content: AppUtils.formatHHMMSS(
                          (bookingModel?.expiryDatetime ?? DateTime.now())
                              .difference(
                                  bookingModel?.startDatetime ?? DateTime.now())
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
