import 'package:flutter/material.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class BookingRegulation extends StatefulWidget {
  const BookingRegulation({super.key});

  @override
  State<BookingRegulation> createState() => _BookingRegulationState();
}

class _BookingRegulationState extends State<BookingRegulation> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return AppCardBox(
      icon: '',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.text?.booking_regulations ?? '',
                  style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
                ),
                TextButton(
                  onPressed: _onClickExpand,
                  child: Row(
                    children: [
                      Text(
                        isExpand
                            ? S.text?.booking_expand ?? ''
                            : S.text?.booking_collapse ?? '',
                        style: AppTextStyle.bodyMedium
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.green2,
                        ),
                        child: Icon(
                          isExpand ? Icons.add : Icons.remove,
                          size: 20,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            if (isExpand)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(color: GreyColor.grey700, height: 1),
                  const SizedBox(height: 16),
                  SeparatedColumn(
                    children: [
                      _text(
                          text: S.text?.booking_regulations_title,
                          isDot: false),
                      _text(text: S.text?.booking_regulations_content),
                      _text(text: S.text?.booking_regulations_content2),
                      _text(text: S.text?.booking_regulations_content3),
                      _text(text: S.text?.booking_regulations_content4),
                      _text(text: S.text?.booking_regulations_content5),
                    ],
                    separatorBuilder: () => const SizedBox(height: 4),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _text({String? text, bool isDot = true}) {
    return Row(
      children: [
        if (isDot)
          Container(
            height: 6,
            width: 6,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          ),
        Text(
          text ?? '',
          style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
        ),
      ],
    );
  }

  void _onClickExpand() {
    setState(() {
      isExpand = !isExpand;
    });
  }
}
