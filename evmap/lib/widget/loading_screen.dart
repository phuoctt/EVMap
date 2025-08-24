import 'package:flutter/material.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';

bool isShow = false;

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  static void close() {
    if (isShow) {
      isShow = false;
      pop();
    }
  }

  static Future<T?>? show<T>() {
    if (isShow) return null;
    isShow = true;
    return showGeneralDialog(
      barrierDismissible: false,
      context: navigatorKey.currentContext!,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return WillPopScope(
          onWillPop: () async => false,
          child: const LoadingScreen(),
        );
      },
      transitionBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        alignment: Alignment.center,
        child: const AppCicularIndicator(),
      ),
    );
  }
}
