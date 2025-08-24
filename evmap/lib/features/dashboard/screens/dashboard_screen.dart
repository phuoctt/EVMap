// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:rabbitevc/features/charge_station/cubit/map_cubit.dart';
import 'package:rabbitevc/features/dashboard/screens/qr_code_screen.dart';
import 'package:rabbitevc/features/dashboard/widgets/map_ui.dart';
import 'package:rabbitevc/features/history/views/history_view.dart';
import 'package:rabbitevc/features/profile/profile/cubit/user_point_cubit.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_cubit.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/features/home/views/home_view.dart';
import 'package:rabbitevc/features/dashboard/views/profile_view.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_cubit.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/service/event_bus/event_bus_manager.dart';
import 'package:rabbitevc/share/enums/dashboard_bottom_type.dart';

import 'package:rabbitevc/theme/colors.dart';

class DashBoardScreen extends StatefulWidget {
  static const route = '/dashboard';

  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<DashboardBottomType> data = DashboardBottomType.values;
  late ValueNotifier<int> _papeNotifier;

  TransactionCubit get _cubit => BlocProvider.of(context);

  @override
  void initState() {
    _tabController = TabController(length: data.length, vsync: this);
    _papeNotifier = ValueNotifier(_tabController.index);
    BlocProvider.of<ProfileCubit>(context).onLoadProfile();
    // AppSocketIO().setup();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // final PendingDynamicLinkData? initialLink =
      //     await FirebaseDynamicLinks.instance.getInitialLink();
    });
    EventBusManager.eventBus.on().listen((e) {
      if (e == EventType.chargeStation) {
        _onTap(DashboardBottomType.chargingStation);
      }
      if (e == EventType.authenticated) {
        BlocProvider.of<UserPointCubit>(context).onLoadUserPoint();
        _cubit.onCheckActive();
      }
      if (e == EventTabType.history) {
        final index = DashboardBottomType.history.index;
        _tabController.animateTo(
          index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.ease,
        );
        _papeNotifier.value = index;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _papeNotifier.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(IcPng.imageBackgroundApp),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                const HomeView(),
                BlocProvider<MapCubit>(
                  create: (context) => MapCubit(),
                  child: const MapUiBody(),
                ),
                // StationView(),
                const SizedBox.shrink(),
                const HistoryView(),
                const ProfileView(),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: _bottomNavigationBar()),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(IcPng.tabbarBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 116,
                color: Colors.transparent,
                padding: const EdgeInsets.fromLTRB(16, 18 + 16, 16, 0),
                child: Center(
                  child: ValueListenableBuilder<int>(
                    valueListenable: _papeNotifier,
                    builder: (context, value, _) {
                      return Row(
                          children: List.generate(data.length, (index) {
                        final item = data[index];
                        return Expanded(
                            child: _tabItem(item,
                                active: index == value,
                                onTap: () => _onTap(item)));
                      }));
                    },
                  ),
                ),
              ),
              if (bottomPadding > 0)
                Container(
                  height: bottomPadding / 2,
                  color: GreyColor.grey800,
                )
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 6 + 26,
          child: GestureDetector(
            // onTap: () => pushNamed(QrCodeScreen.route),
            child: Container(
              height: 48,
              width: 48,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff1BF698), Color(0xff14AE6C)]),
              ),
              child: SvgPicture.asset(IcSvg.icDashboardQr),
            ),
          ),
        )
      ],
    );
  }

  void _onTap(DashboardBottomType item) {
    if (item.index == 2) {
      return;
    }
    final index = item.index;
    _papeNotifier.value = index;
    _tabController.animateTo(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  Widget _tabItem(
    DashboardBottomType item, {
    bool active = false,
    GestureTapCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item == DashboardBottomType.qr
                  ? const SizedBox(width: 24, height: 24)
                  : SvgPicture.asset(
                      item.icon ?? '',
                      color: active
                          ? AppColors.primaryColor
                          : const Color(0xffA1A3A7),
                    ),
              const SizedBox(height: 2),
              Text(item.title ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: active
                          ? AppColors.primaryColor
                          : const Color(0xffA1A3A7)))
            ],
          )),
    );
  }


}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3974027, size.height * 0.1956522);
    path_0.cubicTo(
        size.width * 0.4143627,
        size.height * 0.1956522,
        size.width * 0.4290107,
        size.height * 0.1514283,
        size.width * 0.4407013,
        size.height * 0.1013485);
    path_0.cubicTo(size.width * 0.4552747, size.height * 0.03891587,
        size.width * 0.4758560, 0, size.width * 0.4986667, 0);
    path_0.cubicTo(
        size.width * 0.5214773,
        0,
        size.width * 0.5420587,
        size.height * 0.03891587,
        size.width * 0.5566320,
        size.height * 0.1013485);
    path_0.cubicTo(
        size.width * 0.5683227,
        size.height * 0.1514283,
        size.width * 0.5829707,
        size.height * 0.1956522,
        size.width * 0.5999307,
        size.height * 0.1956522);
    path_0.lineTo(size.width * 0.9573333, size.height * 0.1956522);
    path_0.cubicTo(size.width * 0.9808987, size.height * 0.1956522, size.width,
        size.height * 0.2735152, size.width, size.height * 0.3695652);
    path_0.lineTo(size.width, size.height * 0.8260870);
    path_0.cubicTo(size.width, size.height * 0.9221370, size.width * 0.9808987,
        size.height, size.width * 0.9573333, size.height);
    path_0.lineTo(size.width * 0.04266667, size.height);
    path_0.cubicTo(size.width * 0.01910253, size.height, 0,
        size.height * 0.9221370, 0, size.height * 0.8260870);
    path_0.lineTo(0, size.height * 0.3695652);
    path_0.cubicTo(
        0,
        size.height * 0.2735152,
        size.width * 0.01910251,
        size.height * 0.1956522,
        size.width * 0.04266667,
        size.height * 0.1956522);
    path_0.lineTo(size.width * 0.3974027, size.height * 0.1956522);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff151924).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
