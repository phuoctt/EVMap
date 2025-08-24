import 'package:flutter/material.dart';
import 'package:rabbitevc/share/enums/payment_method_type.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/app_image.dart';

class TopUpPaymentMethod extends StatefulWidget {
  final ValueChanged<PaymentMethodType>? onSubmit;

  const TopUpPaymentMethod({
    super.key,
    this.onSubmit,
  });

  @override
  State<TopUpPaymentMethod> createState() => _TopUpPaymentMethodState();
}

class _TopUpPaymentMethodState extends State<TopUpPaymentMethod> {
  final data = PaymentMethodType.values;
  late PaymentMethodType paymentMethod;

  @override
  void initState() {
    paymentMethod = PaymentMethodType.momo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppCardBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.text?.top_up_payment_method ?? '',
              style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
            ),
            _buildListPaymentMethod(),
            const SizedBox(height: 10),
            AppButton(
              width: double.infinity,
              height: 44,
              onPressed: () => widget.onSubmit?.call(paymentMethod),
              style: AppTextStyle.bodyMedium.copyWith(color: GreyColor.grey800),
              title: S.text?.top_up_top_up_now,
            ),
            const SizedBox(height: 16),
            // Center(
            //   child: Text(S.text?.top_up_payment_instructions ?? '',
            //       style: AppTextStyle.bodyMedium.copyWith(
            //           color: AppColors.primaryColor,
            //           decoration: TextDecoration.underline)),
            // )
          ],
        ),
      ),
    );
  }

  Widget _buildListPaymentMethod() {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final item = data[index];
          bool select = item == paymentMethod;
          return GestureDetector(
            onTap: () => setState(() {
              paymentMethod = item;
            }),
            child: Container(
              // height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      width: 1,
                      color: select ? Colors.white : Colors.transparent),
                  color: Colors.white.withOpacity(0.05)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // _buildRadio(select),
                  Row(
                    children: [
                      // const SizedBox(width: 10),
                      AppImage.asset(item.pathIcon, width: 28),
                      const SizedBox(width: 8),
                      Text(
                        item.title ?? '',
                        style: AppTextStyle.textLink.copyWith(
                          color:
                              select ? Colors.white : const Color(0xff9AA79B),
                        ),
                      )
                    ],
                  ),
                  if (select)
                    Icon(
                      Icons.check,
                      color: AppColors.primaryColor,
                    )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (index, context) {
          return const SizedBox(height: 12);
        },
        itemCount: data.length);
  }

  Widget _buildRadio(bool select) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: select ? AppColors.primaryColor : GreyColor.grey700,
          border: Border.all(
              width: 1,
              color: select ? Colors.transparent : GreyColor.grey600)),
      child: select
          ? Container(
              margin: const EdgeInsets.all(6),
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
            )
          : const SizedBox.shrink(),
    );
  }
}
