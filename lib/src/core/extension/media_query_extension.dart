import 'package:flutter/material.dart';

import '../config/app_insets.dart';
import '../config/app_radius.dart';

extension BuildContextMediaQueryExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  AppEdgeInsets get insets => AppEdgeInsets(this);

  AppBorderRadius get radius => AppBorderRadius(this);

  bool get isMobile => mediaQuery.size.width < 768;
  bool get isTablet => mediaQuery.size.width >= 768 && mediaQuery.size.width < 1024;
  bool get isDesktop => mediaQuery.size.width >= 1024;
}
