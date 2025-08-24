import 'package:flutter/material.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';

class ErrorTryAgain extends StatelessWidget {
  final VoidCallback? onPressed;

  const ErrorTryAgain({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error, color: Colors.grey),
          const SizedBox(height: 16),
          Text(S.text?.error_something_went_wrong_try_again ?? '',
              style: AppTextStyle.largeTextMedium),
          TextButton(
              onPressed: onPressed,
              child: Text(S.text?.text_try_again ?? '',
                  style: AppTextStyle.largeTextMedium
                      .copyWith(color: AppColors.primaryColor)))
        ],
      ),
    );
  }
}
