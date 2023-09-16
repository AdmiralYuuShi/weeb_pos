import 'package:flutter/material.dart';
import '../core.dart';

class AppColors {
  static const Color primary = Color(0xFF181818);
  static const Color accent = Color(0xFFFEC941);

  static const Color accent2 = Color(0xFFE67503);
  static const Color accent3 = Color(0xFF008B77);
  static const Color danger = Color(0xFFFF2E00);
  static const Color mainBg = Color(0xFFFFFFFF);
  static const Color border = Color(0xFFDDDDDD);
  static const Color tableBorder = Color(0xFFEFEFEF);
  static const Color background = Color(0xFFF8F8F8);
  static const Color backgroundSemiDark = Color(0xFFF3F3F3);
  static const Color backgroundDarker = Color(0xFFEDEDED);
  static const Color text = Color(0xFF7D7D7D);
  static const Color sidebar = Color(0xFF8F8F8F);
  static const Color disabled = Color(0xFFACB5BD);

  static Color primaryDark = const Color(0xFFFFFFFF);
  static const Color mainBgDark = Color(0xFF1D1D1D);
  static const Color borderDark = Color(0xFF4D4D4D);
  static const Color tableBorderDark = Color(0xFF4D4D4D);
  static const Color backgroundDark = Color(0xFF292929);
  static const Color backgroundDarkerDark = Color(0xFF3F3F3F);
  static const Color textDark = Color(0xFFA1A1A1);

  static Color accentFaded = accent.withOpacity(0.5);
  static Color accent2Faded = accent2.withOpacity(0.5);
  static Color decorationDark = const Color(0xFF343127);

  static const Color black = Color(0xFF000000);
  static const Color black34 = Color(0xFF343434);
  static const Color black28 = Color(0xFF282828);

  static Color baseShimmer = Colors.grey[300]!;
  static Color highlightShimmer = Colors.grey[100]!;

  static Color shopee = const Color(0xFFE55428);
  static Color tokopedia = const Color(0xFF03AC0E);
}

class ColorsTheme {
  BuildContext _ctx;
  ColorsTheme(this._ctx);

  bool get _isDark => _ctx.isDark;

  Color get primaryColor => _isDark ? AppColors.primaryDark : AppColors.primary;
  Color get primaryReverseColor => _isDark ? AppColors.primary : AppColors.primaryDark;
  Color get mainBgColor => _isDark ? AppColors.mainBgDark : AppColors.mainBg;
  Color get borderColor => _isDark ? AppColors.borderDark : AppColors.border;
  Color get tableBorderColor => _isDark ? AppColors.tableBorderDark : AppColors.tableBorder;
  Color get backgroundColor => _isDark ? AppColors.backgroundDark : AppColors.background;
  Color get backgroundDarkerColor => _isDark ? AppColors.backgroundDarkerDark : AppColors.backgroundDarker;
  Color get textColor => _isDark ? AppColors.textDark : AppColors.text;
  Color get drawerColor => _isDark ? AppColors.background : AppColors.primary;
  Color get selectedDrawerItemColor => _isDark ? AppColors.accent : AppColors.primary;
}
