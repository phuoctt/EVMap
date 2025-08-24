import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rabbitevc/route/navigator.dart';



class S {
  static AppLocalizations? of(BuildContext context) {
    return AppLocalizations.of(navigatorKey.currentContext!);
  }

  static AppLocalizations? get text {
    return AppLocalizations.of(navigatorKey.currentContext!);
  }
}
