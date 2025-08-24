import 'package:flutter/material.dart';
import 'package:rabbitevc/features/dashboard/screens/search_station_screen.dart';
import 'package:rabbitevc/features/dashboard/widgets/box_map.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_image.dart';

class StationView extends StatelessWidget {
  const StationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // BoxMap(),
        Positioned(
          top: 16,
          left: 0,
          right: 0,
          child: _buildHeaderSearch(),
        ),
        // Positioned(
        //   left: 0,
        //   right: 0,
        //   bottom: 131,
        //   child: _buildItemStation(),
        // ),
      ],
    );
  }

  Widget _buildHeaderSearch() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => pushNamed(SearchStationScreen.route),
                child: Container(
                  height: 48,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: GreyColor.grey800.withOpacity(0.04),
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        S.text?.station_search_hint_text ?? '',
                        style: TextStyle(
                            fontFamily: AppFonts.beVietnamPro,
                            fontSize: 14,
                            color: GreyColor.grey600,
                            fontWeight: FontWeight.w300,
                            height: 20 / 14),
                      )),
                      AppImage.asset(IcSvg.icSearch)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 48,
              width: 48,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: GreyColor.grey800.withOpacity(0.04),
              ),
              child: AppImage.asset(IcSvg.icFilter),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItemStation() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 27),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: GreyColor.grey800),
      child: Column(
        children: [
          Text('data'),
          AppButton(
            width: double.infinity,
            onPressed: () {},
            title: 'Chỉ đường',
          )
        ],
      ),
    );
  }
}
