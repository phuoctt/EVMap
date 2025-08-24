import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/profile/profile/cubit/user_point_cubit.dart';
import 'package:rabbitevc/features/top_up/cubit/top_up_cubit.dart';
import 'package:rabbitevc/features/top_up/cubit/top_up_state.dart';
import 'package:rabbitevc/features/top_up/screens/top_up_screen.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/payment/paymentl_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/enums/payment_method_type.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/extensions/num.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/app_outlined_button.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import 'package:rabbitevc/widget/appbar.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class ExChargeScreen extends StatefulWidget {
  final PaymentModel? data;
  static const route = '/excharge';

  const ExChargeScreen({super.key, this.data});

  @override
  State<ExChargeScreen> createState() => _ExChargeScreenState();
}

class _ExChargeScreenState extends State<ExChargeScreen> {
  TopUpCubit get _cubit => BlocProvider.of(context);
  PaymentModel? _data;
  PaymentMethodType? _type;

  @override
  void initState() {
    _data = widget.data;
    _type = PaymentMethodType.fromType(_data?.paymentMethodCode);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      BlocProvider.of<UserPointCubit>(context).onLoadUserPoint();
      if (_data?.id != null) _cubit.onLoadDetailPayment(_data?.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpCubit, TopUpState>(
      builder: (context, state) {
        state.whenOrNull(detailPayment: (data) {
          _data = data;
        });
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: AppScaffold(
            appBar: BaseAppBar(
              leading: const SizedBox.shrink(),
              title: S.text?.excharge_title,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  AppImage.asset(IcPng.icPaymentSuccess, width: 72),
                  const SizedBox(height: 24),
                  SeparatedColumn(
                    children: [
                      _buildContent(
                          title: S.text?.excharge_payment_amount,
                          content: '${_data?.amount?.toCurrency()} vnd'),
                      _buildContent(
                          title: S.text?.excharge_payment_method,
                          iconContent:
                              AppImage.asset(_type?.pathIcon, width: 24),
                          content: _type?.title),
                      _buildContent(
                          title: S.text?.excharge_payment_time,
                          content: _data?.createDatetime
                              ?.toDateLocale('HH:mm:ss dd/MM/yyyy')),
                      _buildContent(
                          title: S.text?.excharge_payment_result,
                          contentWidget: Text(
                            _data?.paymentStatusName ?? '',
                            style: AppTextStyle.bodyMedium
                                .copyWith(color: AppColors.primaryColor),
                          )),
                    ],
                    separatorBuilder: () => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Divider(
                        height: 1,
                        color: GreyColor.grey700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  AppButton(
                      height: 50,
                      width: double.infinity,
                      title: S.text?.text_back_home,
                      onPressed: () => popUntil((route) => route.isFirst)),
                  const SizedBox(height: 16),
                  AppOutLinedButton.large(
                    color: AppColors.primaryColor,
                    width: double.infinity,
                    onPressed: () => pushReplacementNamed(TopUpScreen.route),
                    child: Text(
                      S.text?.excharge_loadmore_money ?? '',
                      style: AppTextStyle.bodyMedium
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildContent(
      {String? title,
      String? content,
      Widget? iconContent,
      Widget? contentWidget}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? '',
          style: AppTextStyle.bodyLight.copyWith(color: GreyColor.grey500),
        ),
        contentWidget ??
            Row(
              children: [
                if (iconContent != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: iconContent,
                  ),
                Text(
                  content ?? '',
                  style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
                ),
              ],
            ),
      ],
    );
  }
}
