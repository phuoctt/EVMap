import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_image.dart';

class ListSearchStation extends StatelessWidget {
  final List<ChargeStationModel> data;
  final ValueChanged<ChargeStationModel>? onTap;

  const ListSearchStation({super.key, required this.data, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final item = data[index];
        return GestureDetector(
          onTap: () => onTap?.call(item),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: GreyColor.grey50.withOpacity(0.05),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                AppImage.asset(IcSvg.icSearchLocation,
                    color: AppColors.primaryColor, width: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 1,
                    height: 56,
                    color: GreyColor.grey600,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'item.name ?? ''',
                              maxLines: 1,
                              style: AppTextStyle.bodyMedium
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Row(
                            children: [
                              Text(
                                '0 km',
                                style: AppTextStyle.bodyMedium
                                    .copyWith(color: Colors.white),
                              ),
                              const SizedBox(width: 8),
                              SvgPicture.asset(IcSvg.icHomeRedirect, width: 24)
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'item.address' ?? '',
                        maxLines: 2,
                        style: AppTextStyle.bodyMedium
                            .copyWith(color: GreyColor.grey600),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
      itemCount: data.length,
    );
  }
}
