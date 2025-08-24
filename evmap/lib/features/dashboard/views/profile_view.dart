import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/login/cubit/user_cubit.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_cubit.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_state.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/user/user_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_avatar.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';
// import 'package:url_launcher/url_launcher.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    UserModel? user;
                    state.whenOrNull(logged: (data) {
                      user = data;
                    });
                    return AppAvatar(
                      user?.avatar_url ?? '',
                      size: 80,
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              _infoAccount(),
              const SizedBox(height: 24),
              _supportCenter(),
              const SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.text?.account_info ?? '',
          style:
              AppTextStyle.largeTextMedium.copyWith(color: GreyColor.grey500),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.gray5,
          ),
          child: SeparatedColumn(
            separatorBuilder: () =>
                const Divider(height: 1, color: GreyColor.grey700),
            children: [
              _item(
                  icon: IcSvg.icAccountInfoPer,
                  title: S.text?.account_info_personal,
                  onTap: _showMessDevelop),
              _item(
                  icon: IcSvg.icAccountChangePw,
                  title: S.text?.account_change_password,
                  onTap: _showMessDevelop),
              _item(
                  icon: IcSvg.icAccountSetting,
                  title: S.text?.account_setting,
                  onTap: _showMessDevelop),
            ],
          ),
        )
      ],
    );
  }
  void _showMessDevelop() {
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(const SnackBar(
      content: Text('Tính năng này đang được phát triển'),
    ));
  }
  Widget _supportCenter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.text?.account_support_center ?? '',
          style:
              AppTextStyle.largeTextMedium.copyWith(color: GreyColor.grey500),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.gray5,
          ),
          child: SeparatedColumn(
            separatorBuilder: () =>
                const Divider(height: 1, color: GreyColor.grey700),
            children: [
              _item(
                  icon: IcSvg.icAccountFb,
                  title: 'Facebook',
                  text: 'SolarZ fanpage',
                  onTap: _launchMessenger),
              _item(
                  icon: IcPng.icAccountZalo,
                  title: 'Zalo',
                  text: 'SolarZ Zalo',
                  onTap: () {
                    AppUtils.launchLink('https://zalo.me/0336011487');
                  }),
              _item(
                  icon: IcSvg.icAccountHotline,
                  title: 'Hotline',
                  text: '0336011487',
                  onTap: () {
                    _makePhoneCall('0336011487');
                  }),
              _item(
                  icon: IcSvg.icAccountPolicy,
                  title: S.text?.account_policy_and_terms,
                  onTap: () {
                    AppUtils.launchLink(
                        'https://dev-api.rabbitevc.vn/templates/policy/policy-vi.html');
                  }),
              _item(
                  icon: IcSvg.icAccountAppInfo,
                  title: S.text?.account_app_information,
                  onTap: _showMessDevelop),
              _item(
                  icon: IcSvg.icAccountLogout,
                  title: S.text?.account_logout,
                  onTap: () {
                    NotifyDialog.showConfirm(
                        content: S.text?.auth_logout_confirm,
                        onPressed: () {
                          BlocProvider.of<UserCubit>(
                                  navigatorKey.currentContext!)
                              .onLogout();
                        });
                  }),
            ],
          ),
        )
      ],
    );
  }

  Widget _item({
    String? icon,
    String? title,
    GestureTapCallback? onTap,
    String? text,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          child: Row(
            children: [
              AppImage.asset(icon, width: 24),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title ?? '',
                  maxLines: 1,
                  style: AppTextStyle.textLink.copyWith(
                    color: GreyColor.grey2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              text?.isNotEmpty == true
                  ? Text(
                      text ?? '',
                      maxLines: 1,
                      style: AppTextStyle.bodyLight
                          .copyWith(color: AppColors.green2),
                    )
                  : const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xff748576),
                      size: 16,
                    )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    // final Uri launchUri = Uri(
    //   scheme: 'tel',
    //   path: phoneNumber,
    // );
    // await launchUrl(launchUri);
  }

  Future<void> _launchMessenger() async {
    String facebookIdHere = 'rabbitevc';
    String url() {
      if (Platform.isAndroid) {
        String uri = 'fb-messenger://user/$facebookIdHere';
        return uri;
      } else if (Platform.isIOS) {
        // iOS
        String uri = 'https://m.me/$facebookIdHere';
        return uri;
      } else {
        return 'error';
      }
    }

    // if (await canLaunchUrl(Uri.parse(url()))) {
    //   await launchUrl(Uri.parse(url()));
    // } else {
    //   throw 'Could not launch ${url()}';
    // }
  }
}
