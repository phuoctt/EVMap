import 'dart:async';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rabbitevc/features/dashboard/screens/dashboard_screen.dart';
import 'package:rabbitevc/features/dashboard/widgets/map_ui.dart';
import 'package:rabbitevc/features/home/views/home_view.dart';
import 'package:rabbitevc/features/login/auth_screen.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';

class SplashScreen extends StatefulWidget {
  static const route = '/splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Timer _timer;
  int _start = 3;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      await _requestPermission();
      Future.delayed(const Duration(milliseconds: 1000), () {
        startTimer();
      });
    });
    super.initState();
  }

  Future<void> _requestPermission() async {
    await Permission.location.request();
  }

  @override
  void dispose() {
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: AppImage.asset(IcPng.imageLogoSplash,height: 150),
      )
    );
  }
}
