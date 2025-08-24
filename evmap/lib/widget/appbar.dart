import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/theme/style.dart';

class BaseAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool primary;
  final String? title;
  final bool? centerTitle;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? widgetTitle;
  final Widget? flexibleSpace;
  final double? titleSpace;
  final PreferredSizeWidget? bottom;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final double? elevation;
  final ShapeBorder? shape;
  final VoidCallback? onPressed;

  const BaseAppBar(
      {this.primary = false,
      this.title,
      this.centerTitle = true,
      this.leading,
      this.actions,
      this.widgetTitle,
      this.elevation,
      this.automaticallyImplyLeading = true,
      this.onPressed,
      Key? key,
      this.flexibleSpace,
      this.titleSpace,
      this.bottom,
      this.shape =
          const Border(bottom: BorderSide(color: Color(0xffF0F0F0), width: 1)),
      this.backgroundColor})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  State<BaseAppBar> createState() => _BaseAppBarState();
}

class _BaseAppBarState extends State<BaseAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      title: widget.widgetTitle ??
          Text(
            widget.title ?? '',
            style: AppTextStyle.largeTextBold.copyWith(color: Colors.white),
          ),
      leading: widget.automaticallyImplyLeading
          ? widget.leading ??
              IconButton(
                onPressed: widget.onPressed ?? pop,
                icon: SvgPicture.asset(
                  IcSvg.icArrowBack,
                  color: Colors.white,
                ),
              )
          : null,
      titleSpacing: widget.titleSpace,
      centerTitle: widget.centerTitle,
      elevation: widget.elevation ?? 0,
      foregroundColor: widget.primary ? Colors.white : Colors.black,
      flexibleSpace: widget.flexibleSpace,
      backgroundColor: widget.backgroundColor ?? Colors.transparent,
      bottom: widget.bottom,
      // shape: widget.shape,
      actions: widget.actions,
    );
  }
}
