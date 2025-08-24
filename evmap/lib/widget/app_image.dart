import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/generated_images.dart';

enum AppImageType { asset, network }

class AppImage extends StatelessWidget {
  const AppImage(this.path, {
    Key? key,
    this.type = AppImageType.asset,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.placeholder,
    this.errorWidget,
    this.alignment,
  }) : super(key: key);

  static AppImage asset(String? path, {
    Color? color,
    double? width,
    double? height,
    BoxFit? fit,
    Alignment? alignment,
  }) =>
      AppImage(
        path,
        type: AppImageType.asset,
        color: color,
        fit: fit,
        width: width,
        height: height,
        alignment: alignment ?? Alignment.center,
      );

  static AppImage network(String? path, {
    Color? color,
    double? width,
    double? height,
    BoxFit? fit,
    Widget? placeholder,
    Widget? errorWidget,
    Alignment? alignment,
    String? pathPlaceholder,
  }) =>
      AppImage(
        path,
        type: AppImageType.network,
        color: color,
        fit: fit,
        width: width,
        height: height,
        placeholder: placeholder,
        errorWidget: errorWidget,
        alignment: alignment ?? Alignment.center,
      );

  final String? path;
  final AppImageType type;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  final Widget? placeholder;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    if (path == null) return _buildError();

    // ///Check Invalid argument(s): No host specified in URI
    // if (type == AppImageType.network ) {
    //   return placeholder ?? _buildPlaceholder();
    // }

    switch (type) {
      case AppImageType.network:
        return _getNetWorkImage();
      case AppImageType.asset:
        if (path?.endsWith('.svg') == true) {
          return SvgPicture.asset(
            path!,
            color: color,
            fit: fit ?? BoxFit.contain,
            width: width,
            height: height,
            alignment: alignment ?? Alignment.center,
          );
        }
        return _getAssetImage();
    }
    // return type == AppImageType.asset ? _getAssetImage() : _getNetWorkImage();
  }

  Widget _buildPlaceholder() {
    return SizedBox(
      width: width,
      height: height,
      child: Image.asset(
        IcPng.imagePlaceholder,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildError() {
    return SizedBox(
      width: width,
      height: height,
      child: const Center(
          child: Icon(
            Icons.error_outline_outlined,
            color: Colors.red,
          )),
    );
  }

  Widget _getAssetImage() {
    return Image.asset(
      path!,
      color: color,
      fit: fit,
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,
    );
  }

  Widget _getNetWorkImage() {
    return CachedNetworkImage(
      imageUrl: path!,
      color: color,
      fit: fit,
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,
      placeholder: (context, _) => placeholder ?? _buildPlaceholder(),
      errorWidget: (context, _, __) {
        return errorWidget ?? _buildError();
      },
    );
  }
}
