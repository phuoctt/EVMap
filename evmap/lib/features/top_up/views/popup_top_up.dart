import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rabbitevc/features/top_up/widgets/top_up_count_down_duration.dart';
import 'package:rabbitevc/models/payment/paymentl_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/enums/payment_method_type.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_outlined_button.dart';
// import 'package:url_launcher/url_launcher.dart';

class PopupTopUp extends StatefulWidget {
  final PaymentMethodType? type;
  final String? link;
  final PaymentModel? data;

  const PopupTopUp({
    Key? key,
    this.type,
    this.link,
    this.data,
  }) : super(key: key);

  static Future<String?> show<T>(
      {PaymentMethodType? type, String? link, PaymentModel? data}) {
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
                insetPadding: const EdgeInsets.symmetric(horizontal: 24),
                child: PopupTopUp(
                  type: type,
                  link: link,
                  data: data,
                ),
              )),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return const SizedBox();
      },
    );
  }

  @override
  State<PopupTopUp> createState() => _PopupTopUpState();
}

class _PopupTopUpState extends State<PopupTopUp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final b =
        (widget.data?.expiredDatetime ?? DateTime.now().toUtc()).getDateOnly();
    final a =
        (widget.data?.createDatetime ?? DateTime.now().toUtc()).getDateOnly();
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  S.text?.top_up_popup_title(widget.type?.title ?? '') ?? '',
                  style: AppTextStyle.largeTextMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                QrImageView(
                  data: widget.link ?? '',
                  version: QrVersions.auto,
                  // size: 320,
                  gapless: false,
                  embeddedImage: AssetImage(widget.type?.pathIcon ?? ''),
                  embeddedImageStyle:
                      const QrEmbeddedImageStyle(size: Size(60, 60)),
                ),
                const SizedBox(height: 8),
                Text(
                  S.text?.top_up_popup_description(widget.type?.title ?? '') ??
                      '',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                TopUpCountDownDuration(
                    duration: b
                        .difference(a)
                        .inSeconds), //b.difference(a).inSeconds),
                const SizedBox(height: 8),
                AppButton(
                  height: 48,
                  width: double.infinity,
                  title: S.text
                      ?.top_up_open_payment_method(widget.type?.title ?? ''),
                  onPressed: () => PaymentMethodType.openDeepLink(widget.data),
                ),
                const SizedBox(height: 16),
                AppOutLinedButton.large(
                  height: 48,
                  width: double.infinity,
                  title: S.text?.text_cancel,
                  onPressed: pop,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
