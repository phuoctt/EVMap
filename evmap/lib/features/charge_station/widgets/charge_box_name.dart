import 'package:flutter/material.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/app_image.dart';

class ChargeBoxName extends StatelessWidget {
  final ChargeBoxModel? data;

  const ChargeBoxName({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
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
                      data?.charge_station?.name ?? '',
                      style: styleContent,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      S.text?.booking_owner ?? '',
                      style: styleTitle,
                    ),
                    Text(
                      data?.charge_station?.customer?.full_name ?? '',
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
}
