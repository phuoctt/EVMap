import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/app_setup.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_box_in_app_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_cubit.dart';
import 'package:rabbitevc/features/dashboard/screens/dashboard_screen.dart';
import 'package:rabbitevc/features/dashboard/screens/splash_screen.dart';
import 'package:rabbitevc/features/dashboard/widgets/map_ui.dart';
import 'package:rabbitevc/features/login/auth_screen.dart';
import 'package:rabbitevc/features/login/cubit/user_cubit.dart';
import 'package:rabbitevc/features/login/cubit/user_state.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_cubit.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_state.dart';
import 'package:rabbitevc/features/profile/profile/cubit/user_point_cubit.dart';
import 'package:rabbitevc/features/top_up/cubit/top_up_cubit.dart';
import 'package:rabbitevc/features/top_up/screens/excharge_screen.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_cubit.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/route/routes.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/service/event_bus/event_bus_manager.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';
import 'package:rabbitevc/share/enums/locale_type.dart';
import 'package:rabbitevc/share/enums/payment_method_type.dart';
import 'package:rabbitevc/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rabbitevc/widget/loading_screen.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';
// import 'package:uni_links/uni_links.dart';
// import 'package:firebase_core/firebase_core.dart';

void mainApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // await Firebase.initializeApp();
  } catch (e) {}
  final app = AppSetup();
  await app.setup();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ChargeBoxInAppCubit>(
          create: (context) => ChargeBoxInAppCubit()),
      BlocProvider<UserCubit>(create: (context) => UserCubit()),
      BlocProvider<ProfileCubit>(create: (context) => ProfileCubit()),
      BlocProvider<UserPointCubit>(create: (context) => UserPointCubit()),
      BlocProvider<ChargeCubit>(create: (context) => ChargeCubit()),
      BlocProvider<TransactionCubit>(create: (context) => TransactionCubit()),
      BlocProvider<TopUpCubit>(create: (context) => TopUpCubit()),
    ],
    child: MyApp(app: app),
  ));
}

class MyApp extends StatefulWidget {
  final AppSetup app;

  const MyApp({Key? key, required this.app}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ChargeBoxInAppCubit get _cubit => BlocProvider.of(context);

  late StreamSubscription deepLinkStream;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      startTimer();
    });

    EventBusManager.eventBus.on().listen((e) {
      if (e == EventType.authenticated) {
        _cubit.onConnectSocket();
      }
    });

    initUniLinks();
    super.initState();
  }

  startTimer() {
    final token = getIt
        .get<LocalStorageService>()
        .getString(LocalStorageKey.saveLogin.name);
    if (token == null || token.isEmpty) {
      pushReplacementNamed(AuthScreen.route);
    } else {
      pushNamedAndRemoveUntil(MapUiBody.route, (_) => false);
    }
  }

  Future<void> initUniLinks() async {
    // try {
    //   final initialLink = await getInitialLink();
    //   deepLinkStream = linkStream.listen((String? link) {
    //     _openDeepLink(link);
    //   }, onError: (err) {});
    // } on PlatformException {
    //   // Handle exception by warning the user their action did not succeed
    //   // return?
    // }
  }

  void _openDeepLink(String? link) {
    final Uri deepLink = Uri.parse(link ?? '');
    Map<String, String> params =
        deepLink.queryParameters; // query parameters automatically populated
    final paymentType = PaymentMethodType.fromType(params['payment_method']);
    final paymentModel =
        BlocProvider.of<TopUpCubit>(navigatorKey.currentContext!)
            .data
            ?.copyWith(paymentStatusName: '');
    switch (paymentType) {
      case PaymentMethodType.momo:
        pushNamedAndRemoveUntil(
            ExChargeScreen.route,
            arguments: {'data': paymentModel},
            (route) => route.isFirst);
        break;
      case PaymentMethodType.zalopay:
        pushNamedAndRemoveUntil(
            ExChargeScreen.route,
            arguments: {'data': paymentModel},
            (route) => route.isFirst);
        break;
      case PaymentMethodType.vnpay:
        pushNamedAndRemoveUntil(
            ExChargeScreen.route,
            arguments: {'data': paymentModel},
            (route) => route.isFirst);
        break;
      case PaymentMethodType.vtcpay:
        pushNamedAndRemoveUntil(
            ExChargeScreen.route,
            arguments: {'data': paymentModel},
            (route) => route.isFirst);
        break;
      case PaymentMethodType.viettel_pay:
        pushNamedAndRemoveUntil(
            ExChargeScreen.route,
            arguments: {'data': paymentModel},
            (route) => route.isFirst);
        break;
    }
  }

  @override
  void deactivate() {
    _cubit.onDisconnectSocket();
    super.deactivate();
  }

  @override
  void dispose() {
    deepLinkStream.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UserCubit, UserState>(
          listener: (context, state) {
            LoadingScreen.close();
            if (state is UserLoading) LoadingScreen.show();
            if (state is UserLogged) {
              navigatorKey.currentState?.pushNamedAndRemoveUntil(
                  DashBoardScreen.route, (route) => false);
            }

            if (state is UserLogout) {
              navigatorKey.currentState?.pushNamedAndRemoveUntil(
                  AuthScreen.route, (route) => false,
                  arguments: {'isLogin': true});
            }
            if (state is UserError) {
              NotifyDialog.showMessage(
                content: state.error,
              ).then((value) {
                final data = state.data as Map<String, dynamic>? ?? {};
              });
            }
          },
        ),
        BlocListener<ProfileCubit, ProfileState>(
          listener: (context, state) {
            if (state is ProfileLogged) {
              EventBusManager.eventBus.fire(EventType.authenticated);
            }
          },
        ),
      ],
      child: MaterialApp(
        title: 'RabbitEVC',
        navigatorKey: navigatorKey,
        theme: ThemeDataExt.build(),
        onGenerateRoute: routes(widget.app),
        // initialRoute: MapUiBody.route,
        navigatorObservers: [routeObserver],
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        locale: Locale(LocaleType.vi.name),
        debugShowCheckedModeBanner: false,
        // home: const SplashScreen(),
      ),
    );
  }
}

