import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/size_configs.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      brightness: Brightness.dark,

      snackBarTheme: const SnackBarThemeData(
        backgroundColor: AppColors.background,
        contentTextStyle: TextStyle(color: Colors.white),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xff2C2B2B),
        hintStyle: const TextStyle(
          color: Color(0xffA7A7A7),
          fontWeight: FontWeight.w400,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: SizeConfigs.ws(16),
          vertical: SizeConfigs.hs(16),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeConfigs.ws(4)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeConfigs.ws(4)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeConfigs.ws(4)),
          borderSide: BorderSide.none,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          elevation: 0,
          textStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: SizeConfigs.fs(16),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfigs.ws(100)),
          ),
        ),
      ),
    );
  }
}
