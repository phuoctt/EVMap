import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/booking/screens/book_charging_screen.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_box_in_app_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/screens/charge_screen.dart';
import 'package:rabbitevc/features/charge_station/widgets/charge_box_name.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/enums/charge_box_type.dart';
import 'package:rabbitevc/share/enums/charge_status_type.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/app_outlined_button.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import 'package:rabbitevc/widget/appbar.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class DetailChangerDock extends StatefulWidget {
  final int? index;
  final ChargeBoxModel? data;
  static const route = '/detail_charger_dock';

  const DetailChangerDock({
    super.key,
    this.index,
    this.data,
  });

  @override
  State<DetailChangerDock> createState() => _DetailChangerDockState();
}

class _DetailChangerDockState extends State<DetailChangerDock> {
  ChargeBoxModel? _data;
  ConnectorsModel? connector;

  @override
  void initState() {
    _data = widget.data;
    if ((widget.index ?? 0) >= 0 && _data?.connectors?.isNotEmpty == true) {
      connector = _data?.connectors![widget.index!];
    }
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
        child: Column(
          children: [
            Expanded(child: _buildDetailChargerDock()),
            SafeArea(
                minimum: const EdgeInsets.only(bottom: 16),
                child: _buildBottomButton()),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailChargerDock() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ChargeBoxName(data: _data),
          const SizedBox(height: 16),
          _boxDetail(),
        ],
      ),
    );
  }

  Widget _boxName() {
    final styleTitle =
        AppTextStyle.smallTextRegular.copyWith(color: GreyColor.grey500);
    const styleContent = TextStyle(
        fontFamily: AppFonts.beVietnamPro,
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        height: 22 / 14);
    return AppCardBox(
      icon: IcSvg.icDetailStationCharging,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppImage.asset(IcPng.imageChargerDock, width: 83),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 16, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.text?.dashboard_station ?? '',
                      style: styleTitle,
                    ),
                    Text(
                      _data?.charge_station?.name ?? '',
                      style: styleContent,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      S.text?.booking_owner ?? '',
                      style: styleTitle,
                    ),
                    Text(
                      _data?.charge_station?.customer?.full_name ?? '',
                      maxLines: 2,
                      style: styleContent,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
                Text(
                  S.text?.booking_details ?? '',
                  style: AppTextStyle.bodyMedium
                      .copyWith(color: GreyColor.grey500),
                ),
                const SizedBox(height: 8),
                Text(
                  _data?.charge_box_name ?? '',
                  style: AppTextStyle.bodyMedium.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 30 / 20),
                ),
                const SizedBox(height: 2),
                Text(
                  S.text?.booking_name_box ?? '',
                  style: AppTextStyle.smallTextRegular
                      .copyWith(color: GreyColor.grey500),
                ),
              ],
            ),
            SeparatedColumn(
                separatorBuilder: () => const SizedBox(height: 12),
                children: [
                  _buildContent(title: 'Mô tả', content: _data?.description),
                  _buildContent(title: 'Serial number', content: '********'),
                  _buildContent(title: 'Giao thức', content: '********'),
                  _buildContent(title: 'FW version', content: '********'),
                ]),
            SeparatedColumn(
                separatorBuilder: () => const SizedBox(height: 12),
                children: [
                  _buildContent(
                      title: S.text?.booking_port,
                      content: '${(widget.index ?? 0) + 1}'),
                  BlocBuilder<ChargeBoxInAppCubit, ChargeStationState>(
                    buildWhen: (prev, current) =>
                        current is ChargeBoxInAppLogged,
                    builder: (_, state) {
                      ChargeStatusType? connectorBoxType =
                          ChargeStatusType.fromTypeStatus(
                              connector?.connector_status);
                      state.whenOrNull(chargeBoxInAppLogged: (val) {
                        if (connector?.charge_box_id == val?.charge_box_id) {
                          ChargeBoxEventType? chargeBoxEventType =
                              ChargeBoxEventType.fromTypeStatus(val?.event_name);
                          connectorBoxType =
                              chargeBoxEventType == ChargeBoxEventType.closed ||
                                      chargeBoxEventType ==
                                          ChargeBoxEventType.transportError
                                  ? ChargeStatusType.unavailable
                                  : ChargeStatusType.available;
                          if (connectorBoxType ==
                              ChargeStatusType.unavailable) {
                            return;
                          }
                        }
                        if (connector?.charge_box_id == val?.charge_box_id &&
                            connector?.connector_id == val?.event_data?.connectorId) {
                          connectorBoxType = ChargeStatusType.fromTypeStatus(
                              val?.event_data?.status);
                        }
                      });
                      return _buildContent(
                          title: S.text?.booking_status,
                          contentWidget: Text(
                            connectorBoxType?.statusText ?? '',
                            style: AppTextStyle.bodyMedium
                                .copyWith(color: connectorBoxType?.color),
                          ),
                          content: connectorBoxType?.statusText ?? '');
                    },
                  )
                ]),
            SeparatedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                separatorBuilder: () => const SizedBox(height: 12),
                children: [
                  _buildContent(
                      title: S.text?.booking_price_type,
                      content: _data?.price?.price_type_name),
                  _buildContent(
                      title: S.text?.booking_unit, content: _data?.price?.unit),
                  _buildPriceList()
                ]),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceList() {
    return SeparatedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bảng giá theo khung giờ sạc',
            style: AppTextStyle.smallTextRegular
                .copyWith(color: GreyColor.grey500),
          ),
          const SizedBox(height: 8),
          SeparatedRow(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _itemPrice(value: '00:00:00', title: 'Từ'),
                _itemPrice(value: '23:59:59', title: 'Đến'),
                _itemPrice(value: '3.117 đ', title: 'Giá tương ứng')
              ])
        ]);
  }

  Widget _itemPrice({String? value, String? title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value ?? '',
          style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 4),
        Text(
          title ?? '',
          style:
              AppTextStyle.smallTextRegular.copyWith(color: GreyColor.grey500),
        ),
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

  Widget _buildBottomButton() {
    return Row(
      children: [
        Expanded(
          child: AppOutLinedButton.large(
            height: 44,
            width: double.infinity,
            title: S.text?.booking_title,
            color: AppColors.green2,
            // onPressed: () => pushNamed(BookingChargingScreen.route,
            //     arguments: {'connector': connector, 'data': _data}),
            style: AppTextStyle.bodyMedium.copyWith(color: AppColors.green2),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: AppButton(
            title: S.text?.booking_charge_now,
            width: double.infinity,
            onPressed: () => pushNamed(ChargeScreen.route,
                arguments: {'data': widget.data, 'index': widget.index}),
          ),
        )
      ],
    );
  }
}
