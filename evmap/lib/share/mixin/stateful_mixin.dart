import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';


mixin StateFullMixin<T extends StatefulWidget> on State<T>
    implements RouteAware {
  /// Get Size
  Size get size => MediaQuery.of(context).size;

  /// Get Theme
  ThemeData get theme => Theme.of(context);

  /// Get TextTheme
  TextTheme get textTheme => theme.textTheme;

  /// Get locale
  AppLocalizations? get locale => S.of(context);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (mounted) onReady(context);
    });
  }

  void onReady(BuildContext context) {}

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final _route = ModalRoute.of(context);
    if (_route is PageRoute) {
      routeObserver.subscribe(this, _route);
    }
  }

  @override
  @mustCallSuper
  void dispose() {
    super.dispose();
    routeObserver.unsubscribe(this);
  }

  @override
  @mustCallSuper
  void didPop() {
    printLog("$runtimeType didPop");
  }

  @override
  @mustCallSuper
  void didPushNext() {
    printLog("$runtimeType didPushNext");
  }

  @override
  @mustCallSuper
  void didPopNext() {
    printLog("$runtimeType didPopNext");
  }

  @override
  @mustCallSuper
  void didPush() {
    printLog("$runtimeType didPush");
  }

  void printLog(String? object) {
    dev.log(object ?? "");
  }
}
