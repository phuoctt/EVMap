import 'package:flutter/material.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';

class AppButton extends StatelessWidget {
  final String? title;
  final TextStyle style;
  final double? height;
  final double? width;
  final Widget? child;
  final VoidCallback? onPressed;
  final Color? color;
  final double borderRadius;
  final bool isLoading;
  final TextStyle? titleStyle;
  final BorderSide? side;
  final EdgeInsetsGeometry? paddingChild;

  const AppButton({
    this.title,
    this.height = 48,
    this.width,
    this.child,
    this.onPressed,
    this.color,
    this.borderRadius = 8,
    super.key,
    this.titleStyle,
    this.side,
    this.isLoading = false,
    this.paddingChild,
    this.style = const TextStyle(
        fontFamily: AppFonts.beVietnamPro,
        fontSize: 16,
        color: Color(0xff061620),
        fontWeight: FontWeight.w600),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 1.0,
          shadowColor: const Color(0xff000000).withOpacity(0.25),
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: side ?? BorderSide.none,
          ),
          disabledBackgroundColor: Colors.grey,
        ),
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Padding(
                padding: paddingChild ?? const EdgeInsets.only(bottom: 3),
                child: (child ??
                    Text(
                      title ?? '',
                      style: titleStyle ?? style,
                    )),
              ),
      ),
    );
  }
}
