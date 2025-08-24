import 'package:flutter/material.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/enums/device_type.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_outlined_button.dart';

enum NotifyDialogType { message, confirm, willPop }

class NotifyDialog extends StatelessWidget {
  final String? title;
  final String? content;
  final Widget? widgetContent;
  final String? textConfirm;
  final String? textCancel;
  final VoidCallback? onPressed;
  final NotifyDialogType? type;
  final bool? isWillPop;
  final bool isPop;
  final bool? reversedButton;

  const NotifyDialog({
    super.key,
    this.title,
    this.content,
    this.widgetContent,
    this.textConfirm,
    this.onPressed,
    this.textCancel,
    this.type,
    this.isWillPop,
    this.isPop = true,
    this.reversedButton,
  });

  static Future<T?> showMessage<T>(
      {String? title,
      String? content,
      String? textConfirm,
      Widget? widgetContent,
      VoidCallback? onPressed,
      bool? isWillPop,
      bool isPop = true}) {
    return showPopup(
        child: WillPopScope(
      onWillPop: () async {
        return (isWillPop ?? true);
      },
      child: NotifyDialog(
        title: title ?? S.text?.text_notify ?? '',
        content: content,
        widgetContent: widgetContent,
        textConfirm: textConfirm ?? S.text?.text_confirm ?? '',
        textCancel: textConfirm ?? S.text?.text_cancel ?? '',
        onPressed: onPressed,
        type: NotifyDialogType.message,
        isWillPop: isWillPop,
        isPop: isPop,
      ),
    ));
  }

  static Future<T?> showConfirm<T>(
      {String? title,
      String? content,
      String? textConfirm,
      String? textCancel,
      Widget? widgetContent,
      VoidCallback? onPressed,
      NotifyDialogType? type,
      bool? reversedButton}) {
    return showPopup(
        child: NotifyDialog(
      title: title ?? S.text?.text_notify ?? '',
      content: content,
      textConfirm: textConfirm ?? S.text?.text_confirm ?? '',
      textCancel: textCancel ?? S.text?.text_cancel ?? '',
      onPressed: onPressed,
      type: NotifyDialogType.confirm,
      reversedButton: reversedButton,
      widgetContent: widgetContent,
    ));
  }

  static Future<T?> showPopup<T>({required Widget child}) {
    return showGeneralDialog(
      context: navigatorKey.currentContext!,
      // barrierDismissible: keepVisible ?? false,

      barrierLabel: '',
      transitionBuilder: (context, a1, a2, _) {
        var curve = Curves.easeInOut.transform(a1.value);
        return Opacity(
          opacity: a1.value,
          child: Transform.scale(
              scale: curve,
              child: Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                insetPadding: EdgeInsets.symmetric(
                    horizontal: DeviceType.getDeviceType() == DeviceType.phone
                        ? 20
                        : 157),
                child: child,
              )),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return const SizedBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> childrenButton = [
      Expanded(
        child: AppOutLinedButton.medium(
          title: textCancel,
          onPressed: () {
            pop();
          },
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: AppButton(
          title: textConfirm,
          height: 42,
          onPressed: () {
            pop();
            onPressed?.call();
          },
        ),
      ),
    ];
    if (reversedButton ?? false) {
      childrenButton = childrenButton.reversed.toList();
    }
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          type == NotifyDialogType.message && (isWillPop ?? true)
              ? const Positioned.fill(
                  child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          onPressed: pop, icon: Icon(Icons.close_sharp))))
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 32, 20, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                title == null
                    ? const SizedBox()
                    : Text(
                        title ?? '',
                        style: AppTextStyle.largeTextExtraBold,
                        textAlign: TextAlign.center,
                      ),
                const SizedBox(height: 8),
               widgetContent ??
                    Text(
                      content ?? '',
                      style: AppTextStyle.textLink
                          .copyWith(color: AppColors.textColor),
                      textAlign: TextAlign.center,
                    ),
                const SizedBox(height: 16),
                type == NotifyDialogType.message
                    ? AppButton(
                        height: 42,
                        title: textConfirm,
                        width: double.infinity,
                        onPressed: () {
                          if ((isPop)) {
                            pop();
                          }

                          onPressed?.call();
                        },
                      )
                    : Row(
                        children: childrenButton,
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
