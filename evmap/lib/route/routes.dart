// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/booking/cubit/booking_cubit.dart';
import 'package:rabbitevc/features/booking/screens/book_info_screen2.dart';
import 'package:rabbitevc/features/booking/screens/reason_cancel_booking_screen.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_type_cubit.dart';
import 'package:rabbitevc/features/booking/screens/book_charging_screen.dart';
import 'package:rabbitevc/features/charge_station/cubit/map_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_cubit.dart';
import 'package:rabbitevc/features/charge_station/screens/charge_station_screen.dart';
import 'package:rabbitevc/features/charge_station/screens/detail_charge_station_screen.dart';
import 'package:rabbitevc/features/charge_station/screens/detail_charger_dock.dart';
import 'package:rabbitevc/features/dashboard/screens/dashboard_screen.dart';
import 'package:rabbitevc/features/charge_station/screens/charge_screen.dart';
import 'package:rabbitevc/features/dashboard/screens/qr_code_screen.dart';
import 'package:rabbitevc/features/dashboard/screens/search_station_screen.dart';
import 'package:rabbitevc/features/dashboard/widgets/map_ui.dart';
import 'package:rabbitevc/features/history/cubit/history_cubit.dart';
import 'package:rabbitevc/features/history/screens/detail_bill_screen.dart';
import 'package:rabbitevc/features/home/views/home_view.dart';
import 'package:rabbitevc/features/login/auth_screen.dart';
import 'package:rabbitevc/features/top_up/cubit/top_up_cubit.dart';
import 'package:rabbitevc/features/top_up/screens/excharge_screen.dart';
import 'package:rabbitevc/features/top_up/screens/top_up_screen.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_cubit.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import '../app_setup.dart';

var bootStage = 1;

RouteFactory routes(AppSetup app) {
  return (RouteSettings settings) {
    var fullScreen = false;
    Widget? screen;
    if (bootStage == 1) {
      bootStage = 2;
      return PageRouteBuilder(
        pageBuilder: (_, __, ___) => const AppScaffold(),
      );
    }
    var arguments = settings.arguments as Map<String, dynamic>? ?? {};
    var name = settings.name;

    switch (name) {
      case MapUiBody.route:
        screen = MultiBlocProvider(
          providers: [
            BlocProvider<MapCubit>(create: (context) => MapCubit()),
            BlocProvider<ChargeStationCubit>(
                create: (context) => ChargeStationCubit()),
          ],
          child: MapUiBody(),
        );
        break;
      case AuthScreen.route:
        final isLogin = arguments['isLogin'];
        screen = AuthScreen(isLogin: isLogin);
        break;
      case HomeView.route:
        screen = const HomeView();
        break;
      case DashBoardScreen.route:
        screen = BlocProvider<ChargeStationCubit>(
            create: (context) => ChargeStationCubit(),
            child: const DashBoardScreen());
        break;
      // case QrCodeScreen.route:
      //   screen = BlocProvider<ChargeStationCubit>(
      //       create: (context) => ChargeStationCubit(),
      //       child: const QrCodeScreen());
      //   break;
      case ChargeScreen.route:
        final data = arguments['data'];
        final index = arguments['index'];
        final transaction = arguments['transaction'];
        final chargeBoxId = arguments['chargeBoxId'];
        final connectorId = arguments['connectorId'];
        screen = BlocProvider<ChargeStationCubit>(
            create: (context) => ChargeStationCubit(),
            child: ChargeScreen(
              index: index,
              data: data,
              transactionModel: transaction,
              chargeBoxId: chargeBoxId,
              connectorId: connectorId,
            ));
        break;
      case DetailCharStationScreen.route:
        Station data = arguments['data'];
        screen = BlocProvider<StationCubit>(
            create: (context) => StationCubit(),
            child: DetailCharStationScreen(data: data));
        break;
      case DetailChangerDock.route:
        screen = BlocProvider<ChargeStationCubit>(
            create: (context) => ChargeStationCubit(),
            child: DetailChangerDock(
              data: arguments['data'],
              index: arguments['index'],
            ));
        break;
      // case BookingChargingScreen.route:
      //   screen = BlocProvider<BookingCubit>(
      //       create: (context) => BookingCubit(),
      //       child: BookingChargingScreen(
      //         data: arguments['data'],
      //         connector: arguments['connector'],
      //       ));
      //   break;
      case ReasonCancelBookingScreen.route:
        screen = BlocProvider<BookingCubit>(
            create: (context) => BookingCubit(),
            child: ReasonCancelBookingScreen(
              idBooking: arguments['idBooking'],
            ));
        break;
      case BookingInfoScreen2.route:
        screen = MultiBlocProvider(
          providers: [
            BlocProvider<BookingCubit>(create: (context) => BookingCubit()),
            BlocProvider<ChargeStationCubit>(
                create: (context) => ChargeStationCubit()),
          ],
          child: BookingInfoScreen2(bookingModel: arguments['bookingModel']),
        );
        break;
      case DetailBillScreen.route:
        screen = MultiBlocProvider(
          providers: [
            BlocProvider<TransactionCubit>(
                create: (context) => TransactionCubit()),
            BlocProvider<HistoryCubit>(create: (context) => HistoryCubit()),
            BlocProvider<ChargeStationCubit>(
                create: (context) => ChargeStationCubit()),
          ],
          child: DetailBillScreen(
            transactionId: arguments['id'],
            historyId: arguments['historyId'],
          ),
        );
        break;
      case TopUpScreen.route:
        screen = const TopUpScreen();
        break;
      case ExChargeScreen.route:
        screen = BlocProvider<TopUpCubit>(
          create: (context) => TopUpCubit(),
          child: ExChargeScreen(data: arguments['data']),
        );
        break;
      case ChargeStationScreen.route:
        screen = BlocProvider<ChargeStationCubit>(
            create: (context) => ChargeStationCubit(),
            child: ChargeStationScreen(address: arguments['address']));
        break;
      case SearchStationScreen.route:
        screen = MultiBlocProvider(
          providers: [
            BlocProvider<ChargeStationCubit>(
                create: (context) => ChargeStationCubit()),
            BlocProvider<ChargeTypeCubit>(
                create: (context) => ChargeTypeCubit()),
          ],
          child: SearchStationScreen(
            data: arguments['data'],
            filterModel: arguments['filterModel'],
          ),
        );
        break;
    }

    screen ??= const Scaffold(
      backgroundColor: Colors.white,
    );
    if (bootStage == 2) {
      bootStage = 3;
      return PageRouteBuilder(
        settings: settings,
        pageBuilder: (BuildContext context, _, __) {
          return screen!;
        },
        transitionDuration: const Duration(milliseconds: 500),
      );
    }

    return MaterialPageRoute(settings: settings, builder: (context) => screen!);
  };
}
