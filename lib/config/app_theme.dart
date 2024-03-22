import 'package:flutter/material.dart';
import 'package:mbs/config/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.white,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Raleway",
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.fontGray,
      ),
      displayLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppColors.fontGray,
      ),
      bodySmall: TextStyle(
        fontSize: 10,
        color: AppColors.fontGray,
      ),
    ),
  );
}
