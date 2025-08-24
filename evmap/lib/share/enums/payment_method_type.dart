import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/payment/paymentl_model.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
// import 'package:url_launcher/url_launcher.dart';

enum PaymentMethodType {
  momo,
  zalopay,
  vnpay,
  vtcpay,
  viettel_pay;

  const PaymentMethodType();
  static PaymentMethodType? fromType(String? name) {
    try {
      return PaymentMethodType.values.firstWhere((element) => name == element.name);
    } catch (e) {
      return null;
    }
  }
  String? get title {
    switch (this) {
      case PaymentMethodType.momo:
        return S.text?.top_up_payment_method_momo;
      case PaymentMethodType.zalopay:
        return S.text?.top_up_payment_method_zalo_pay;
      case PaymentMethodType.vnpay:
        return S.text?.top_up_payment_method_vn_pay;
      case PaymentMethodType.vtcpay:
        return S.text?.top_up_payment_method_vtc_pay;
      case PaymentMethodType.viettel_pay:
        return S.text?.top_up_payment_viettel_pay;
    }
  }

  String? get pathIcon {
    switch (this) {
      case PaymentMethodType.momo:
        return IcPng.icMomo;
      case PaymentMethodType.zalopay:
        return IcPng.icZaloPay;
      case PaymentMethodType.vnpay:
        return IcPng.icVnpay;
      case PaymentMethodType.vtcpay:
        return IcPng.icVtcPay;
      case PaymentMethodType.viettel_pay:
        return IcPng.icViettelPay;
    }
  }

  static void openDeepLink(PaymentModel? data) async {
    // bool isDeeplink = data?.payAction?.deeplink?.isNotEmpty == true &&
    //     (data?.payAction?.deeplink?.contains('http') ?? false) == false;
    // String? link =
    //     isDeeplink ? data?.payAction?.deeplink : data?.payAction?.payUrl;
    // if (data?.paymentMethodCode == PaymentMethodType.zalopay.name &&
    //     data?.payAction?.extraData?.zpTransToken?.isNotEmpty == true) {
    //   isDeeplink = true;
    //   link =
    //       'zalopay://pay?appid=vn.com.vng.zalopay&zptranstoken=${data?.payAction?.extraData?.zpTransToken}';
    // }
    // if (link?.isNotEmpty == true) {
    //   final uri = Uri.parse(link!);
    //
    //   if (!await launchUrl(uri,
    //       mode: isDeeplink
    //           ? LaunchMode.externalApplication
    //           : LaunchMode.inAppWebView)) {
    //     throw Exception('Could not launch $uri');
    //   }
    // }
  }

  static String? getDeepLink(PaymentModel? data) {
    bool isDeeplink = data?.payAction?.deeplink?.isNotEmpty == true &&
        (data?.payAction?.deeplink?.contains('http') ?? false) == false;
    String? link =
        isDeeplink ? data?.payAction?.deeplink : data?.payAction?.payUrl;
    if (data?.paymentMethodCode == PaymentMethodType.zalopay.name &&
        data?.payAction?.extraData?.zpTransToken?.isNotEmpty == true) {
      isDeeplink = true;
      link =
          'zalopay://pay?appid=vn.com.vng.zalopay&zptranstoken=${data?.payAction?.extraData?.zpTransToken}';
    }
    return link;
  }
}
