import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/features/charge_station/screens/charge_station_screen.dart';
import 'package:rabbitevc/features/home/cubit/feed_cubit.dart';
import 'package:rabbitevc/features/home/widgets/home_feed.dart';
import 'package:rabbitevc/features/home/widgets/home_menu.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_cubit.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_state.dart';
import 'package:rabbitevc/features/profile/profile/cubit/user_point_cubit.dart';
import 'package:rabbitevc/features/profile/profile/cubit/user_point_state.dart';
import 'package:rabbitevc/features/top_up/screens/top_up_screen.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/user/user_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/event_bus/event_bus_manager.dart';
import 'package:rabbitevc/share/enums/home_menu_type.dart';
import 'package:rabbitevc/share/extensions/num.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_avatar.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(),
        const SizedBox(height: 16),
        _buildMyPoint(),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            EventBusManager.eventBus.fire(EventType.chargeStation);
            EventBusManager.eventBus.fire(EventType.findChargeStation);
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.05)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tìm trạm sạc',
                  style: AppTextStyle.textLink.copyWith(
                      color: GreyColor.grey500, fontWeight: FontWeight.w300),
                ),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        HomeMenu(
          onTap: _onTapMenu,
        ),
        const SizedBox(height: 16),
        BlocProvider<FeedCubit>(
          create: (context) => FeedCubit(),
          child: const HomeFeed(),
        )
      ],
    );
  }

  void _onTapMenu(HomeMenuType type) {
    switch (type) {
      case HomeMenuType.chargingStation:
        // EventBusManager.eventBus.fire(EventType.chargeStation);
        pushNamed(ChargeStationScreen.route);
        break;
      case HomeMenuType.chargingHistory:
        EventBusManager.eventBus.fire(EventTabType.history);
        break;
      case HomeMenuType.information:
        _showMessDevelop();
        break;
      case HomeMenuType.promotion:
        _showMessDevelop();
        break;
      case HomeMenuType.file:
        _showMessDevelop();
        break;
      case HomeMenuType.setting:
        _showMessDevelop();
        break;
      case HomeMenuType.tutorial:
        _showMessDevelop();
        break;
    }
  }
  void _showMessDevelop() {
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(const SnackBar(
      content: Text('Tính năng này đang được phát triển'),
    ));
  }
  Widget _buildMyPoint() {
    return GestureDetector(
      onTap: () => pushNamed(TopUpScreen.route),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white.withOpacity(0.05)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  IcSvg.iconHomeCoin,
                  width: 24,
                ),
                const SizedBox(width: 12),
                BlocBuilder<UserPointCubit, UserPointState>(
                  builder: (context, state) {
                    num point = 0;
                    state.whenOrNull(logged: (data) {
                      point = data.point ?? 0;
                    });
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Điểm của bạn',
                          style: AppTextStyle.smallTextRegular
                              .copyWith(color: GreyColor.grey500),
                        ),
                        Text(
                          point.toCurrency() ?? '',
                          maxLines: 1,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Nạp Thêm Điểm',
                  style:
                      AppTextStyle.bodyMedium.copyWith(color: AppColors.green2),
                ),
                const SizedBox(width: 6),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.green2,
                  size: 16,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    UserModel? user;
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        state.whenOrNull(logged: (data) {
          user = data;
        });
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AppAvatar(
                  user?.avatar_url ?? '',
                  size: 40,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Xin chào',
                      style: AppTextStyle.smallTextRegular
                          .copyWith(color: GreyColor.grey2),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      user?.full_name ?? '',
                      style: AppTextStyle.bodyMedium
                          .copyWith(color: GreyColor.grey2),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.10)),
              child: Center(
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      IcSvg.icHomeNotification,
                      width: 24,
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xffFFC218)),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
