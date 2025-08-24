import 'package:flutter/material.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';

extension ThemeDataExt on ThemeData {
  static ThemeData build() {
    return ThemeData(
        fontFamily: AppFonts.beVietnamPro,
        brightness: Brightness.light,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
        primaryColor: AppColors.primaryColor,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: AppColors.primaryColor),
        // hoverColor: PrimaryColor.primary1,
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: Colors.grey)),
        // fontFamily: 'Inter',
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
        ),
        scaffoldBackgroundColor: Colors.white);
  }
}
