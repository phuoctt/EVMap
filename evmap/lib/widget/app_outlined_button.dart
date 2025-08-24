import 'package:flutter/material.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';

class AppOutLinedButton extends StatelessWidget {
  final String? title;
  final TextStyle style;
  final double? height;
  final double? width;
  final Widget? child;
  final VoidCallback? onPressed;
  final Color? color;
  final double borderRadius;

  const AppOutLinedButton.large(
      {this.title,
      this.style = AppTextStyle.largeTextMedium,
      this.height = 48,
      this.width,
      this.child,
      this.onPressed,
      this.color,
      this.borderRadius = 4,
      super.key});

  const AppOutLinedButton.medium(
      {this.title,
      this.style = AppTextStyle.largeTextMedium,
      this.height = 42,
      this.width,
      this.child,
      this.onPressed,
      this.color,
      this.borderRadius = 4,
      super.key});

  const AppOutLinedButton.small(
      {this.title,
      this.style = AppTextStyle.bodyMedium,
      this.height = 36,
      this.width,
      this.child,
      this.onPressed,
      this.color,
      this.borderRadius = 4,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll<Color>(Colors.green),
          elevation: MaterialStateProperty.resolveWith<double>(
            // As you said you dont need elevation. I'm returning 0 in both case
            (Set<MaterialState> states) {
              return 0;
            },
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return BorderSide(
                  width: 1,
                  color: color ?? AppColors.textColor,
                  style: BorderStyle.solid,
                );
              }
              if (states.contains(MaterialState.disabled)) {
                return const BorderSide(
                  width: 1,
                  color: Colors.grey,
                  style: BorderStyle.solid,
                );
              }
              return BorderSide(
                width: 1,
                color: color ?? AppColors.textColor,
                style: BorderStyle.solid,
              ); // Use the component's default.
            },
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: const BorderSide(color: Colors.red, width: 3),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: child ?? Text(title ?? '', style: style),
        ),
      ),
    );
  }
}
