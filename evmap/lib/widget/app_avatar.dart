import 'package:flutter/material.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/widget/app_image.dart';

class AppAvatar extends StatelessWidget {
  final double? size;
  final String? path;
  final BoxFit? fit;

  final Alignment? alignment;
  final Widget? errorWidget;

  const AppAvatar(this.path,
      {Key? key, this.size = 40, this.fit, this.alignment, this.errorWidget, x})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (path?.isEmpty == true || path == null) {
      return ClipOval(
          child: AppImage.asset(
        IcPng.iconAvatarDefault,
        height: size,
        width: size,
        fit: fit ?? BoxFit.cover,
      ));
    }
    return ClipOval(
        child: AppImage.network(
      path,
      height: size,
      width: size,
      fit: fit ?? BoxFit.cover,
      pathPlaceholder: IcPng.iconAvatarDefault,
      errorWidget: errorWidget ??
          Image.asset(
            IcPng.iconAvatarDefault,
            fit: BoxFit.cover,
          ),
    ));
  }
}
