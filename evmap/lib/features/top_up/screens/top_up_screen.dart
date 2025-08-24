import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rabbitevc/data/model/topup_request.dart';
import 'package:rabbitevc/features/top_up/screens/excharge_screen.dart';
import 'package:rabbitevc/features/top_up/views/popup_top_up.dart';
import 'package:rabbitevc/models/payment/paymentl_model.dart';
import 'package:rabbitevc/features/top_up/cubit/top_up_cubit.dart';
import 'package:rabbitevc/features/top_up/cubit/top_up_state.dart';
import 'package:rabbitevc/features/top_up/widgets/top_up_header.dart';
import 'package:rabbitevc/features/top_up/widgets/top_up_payment_method.dart';
import 'package:rabbitevc/features/top_up/widgets/top_up_pick_point.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/enums/payment_method_type.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import 'package:rabbitevc/widget/appbar.dart';
import 'package:rabbitevc/widget/loading_screen.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';
import 'package:rabbitevc/widget/unfocus.dart';

class TopUpScreen extends StatefulWidget {
  static const route = '/top-up';

  const TopUpScreen({super.key});

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> with WidgetsBindingObserver {
  num point = 0;

  TopUpCubit get _cubit => BlocProvider.of(context);
  PaymentMethodType? paymentType;
  PaymentModel? _paymentModel;
  static const MethodChannel platform = MethodChannel(
      'flutter.native/channelPayOrder'); //Example of creating MethodChannel
  static const EventChannel eventChannel =
  EventChannel('flutter.native/eventPayOrder');
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // if (state == AppLifecycleState.resumed) {
    //   if (paymentType == PaymentMethodType.zalopay)
    //     _cubit.onCheckStatus(_paymentModel?.id);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return UnFocus(
      child: BlocListener<TopUpCubit, TopUpState>(
        listener: (context, state) {
          LoadingScreen.close();
          state.whenOrNull(
              loadingScreen: () => LoadingScreen.show(),
              success: _launchInBrowser,
              statusSuccess: (val) {
                pushNamedAndRemoveUntil(
                    ExChargeScreen.route,
                    arguments: {'data': val},
                    (route) => route.isFirst);
              },
              error: (message) => NotifyDialog.showMessage(content: message));
        },
        child: AppScaffold(
          appBar: BaseAppBar(
            title: S.text?.top_up_title,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SeparatedColumn(
                children: [
                  const TopUpHeader(),
                  TopUpPickPoint(
                    onChanged: (p) => point = p,
                  ),
                  TopUpPaymentMethod(
                    onSubmit: _onTopUp,
                  ),
                ],
                separatorBuilder: () => const SizedBox(height: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTopUp(PaymentMethodType paymentMethodType) async {
    if (point % 1000 != 0) {
      ScaffoldMessenger.of(context).clearSnackBars();
      var snackBar = SnackBar(
        backgroundColor: Colors.amber,
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            S.text?.top_up_validate ?? '',
            style: AppTextStyle.textLink.copyWith(color: Colors.white),
          ),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      paymentType = paymentMethodType;
      _cubit.onTopUp(TopUpRequest(
        env: 'dev',
        payment_type: 'exchange_point',
        payment_method: paymentMethodType.name,
        redirect_url:
            'https://spcharge.page.link/*/exchanged?amount=10000&payment_method=momo',
        amount: point,
      ));
    }
  }



  Future<void> _launchInBrowser(PaymentModel? data) async {
    _paymentModel = data;
    final type = PaymentMethodType.fromType(data?.paymentMethodCode);
    if (primaryFocus != null) primaryFocus!.unfocus();
    if (type == PaymentMethodType.zalopay) {
      final String result =
          await platform.invokeMethod('payOrder', {"zptoken": data?.payAction?.extraData?.zpTransToken});
      return;
    }
    PaymentMethodType.openDeepLink(data);

    // PopupTopUp.show(
    //     type: paymentType,
    //     link: PaymentMethodType.getDeepLink(data),
    //     data: data);
  }
}
