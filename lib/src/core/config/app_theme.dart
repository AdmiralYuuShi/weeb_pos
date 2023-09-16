import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      backgroundColor: AppColors.mainBg,
      textTheme: defaultTextTheme(),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryDark,
      backgroundColor: AppColors.mainBgDark,
      textTheme: defaultTextTheme(isDark: true),
    );
  }

  static TextTheme defaultTextTheme({bool isDark = false}) {
    return GoogleFonts.latoTextTheme(
      TextTheme(
        displayLarge: TextStyle(
          fontSize: 57,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        displayMedium: TextStyle(
          fontSize: 45,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        displaySmall: TextStyle(
          fontSize: 36,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        headlineLarge: TextStyle(
          fontSize: 32,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          color: isDark ? AppColors.textDark : AppColors.text,
        ),
      ),
    );
  }
}
