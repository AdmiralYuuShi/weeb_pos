import 'package:flutter/material.dart';
import '../config/app_colors.dart';

extension WidgetsBuildContextThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  bool get isDark => theme.brightness == Brightness.dark;

  ColorsTheme get colorTheme => ColorsTheme(this);
}
