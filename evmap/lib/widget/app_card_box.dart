import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/widget/app_image.dart';

class AppCardBox extends StatelessWidget {
  final Widget? child;
  final String? icon;
  final Color? colorIcon;

  const AppCardBox({
    Key? key,
    this.child,
    this.icon,
    this.colorIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.05)),
      child: icon != null
          ? Stack(
              children: [
                child ?? const SizedBox.shrink(),
                Align(
                  alignment: Alignment.topRight,
                  child: Stack(
                    children: [
                      AppImage.asset(IcSvg.icDetailStationDefectShape,
                          width: 60),
                      Positioned(
                          right: 8,
                          top: 8,
                          child: SvgPicture.asset(
                              icon ?? IcSvg.icDetailStationCharging,
                              width: 20,
                              color: colorIcon)),
                    ],
                  ),
                )
              ],
            )
          : child,
    );
  }
}
