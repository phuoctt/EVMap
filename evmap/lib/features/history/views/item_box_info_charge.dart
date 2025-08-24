import 'package:flutter/material.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';

class ItemBoxInfoCharge extends StatelessWidget {
  final String? title;
  final Widget? widgetTitle;
  final String? content;
  final Widget? widgetContent;
  final double spacing;

  const ItemBoxInfoCharge({
    Key? key,
    this.title,
    this.widgetTitle,
    this.content,
    this.widgetContent,
    this.spacing = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widgetTitle ??
            Text(
              title ?? '',
              style: const TextStyle(
                  fontFamily: AppFonts.beVietnamPro,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  height: 30 / 20),
            ),
        SizedBox(height: spacing),
        widgetContent ??
            Text(
              content ?? '',
              style: AppTextStyle.smallTextRegular
                  .copyWith(color: GreyColor.grey500),
            ),
      ],
    );
  }
}
