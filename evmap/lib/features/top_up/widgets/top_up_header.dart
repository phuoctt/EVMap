import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/profile/profile/cubit/user_point_cubit.dart';
import 'package:rabbitevc/features/profile/profile/cubit/user_point_state.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/share/extensions/num.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_card_box.dart';

class TopUpHeader extends StatelessWidget {
  const TopUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCardBox(
      icon: IcSvg.icHistoryDiamond,
      colorIcon: AppColors.semanticColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<UserPointCubit, UserPointState>(
              builder: (context, state) {
                num point = 0;
                state.whenOrNull(logged: (data) {
                  point = data.point ?? 0;
                });
                return RichText(
                  text: TextSpan(
                    text: S.text?.top_up_my_score,
                    style: AppTextStyle.smallTextRegular
                        .copyWith(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' ${point.toCurrency()} ',
                          style: AppTextStyle.largeTextBold
                              .copyWith(color: Colors.white)),
                      TextSpan(
                          text: S.text?.top_up_score,
                          style: AppTextStyle.smallTextRegular
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 4),
            Text(
              S.text?.top_up_note ?? '',
              style: AppTextStyle.smallTextMedium.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
