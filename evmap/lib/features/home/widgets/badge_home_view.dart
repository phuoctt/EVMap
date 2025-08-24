import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';

class BadgeHomeView extends StatelessWidget {
  final String? path;
  final String? title;
  final String? content;
  final Widget? contentWidget;

  const BadgeHomeView({
    Key? key,
    this.path,
    this.title,
    this.content,
    this.contentWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color(0xFF1BF698),
            Color(0xFF14AE6C),
          ], tileMode: TileMode.clamp),
          borderRadius: BorderRadius.circular(100)),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            SvgPicture.asset(
              path ?? '',
              width: 24,
              color: AppColors.gray5,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? '',
                    style:
                        const TextStyle(fontSize: 12, color: AppColors.gray5),
                  ),
                  const SizedBox(height: 4),
                  contentWidget ??
                      Text(
                        content ?? '',
                        style: const TextStyle(
                            fontSize: 12, color: AppColors.gray5),
                      )
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.gray5,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
