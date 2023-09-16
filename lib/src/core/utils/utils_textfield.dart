import 'package:flutter/services.dart';

class WidgetsUtilsFormatters {
  static FilteringTextInputFormatter doubleInput() {
    return FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,}'));
  }

  static FilteringTextInputFormatter intInput() {
    return FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));
  }
}

class WidgetsUtilsValidators {
  static String? pin(String? value) {
    if (value == null || value.isEmpty) {
      return 'PIN cannot empty';
    }
    if (value.length < 6) {
      return 'PIN length must 6';
    }
    return null;
  }

  static String? minLength(String? value, {required int min}) {
    if (value == null || value.isEmpty) {
      return 'Cannot empty';
    }
    if (value.length < min) {
      return 'Minimum length is $min';
    }
    return null;
  }

  static String? maxLength(String? value, {required int max}) {
    if (value == null || value.isEmpty) {
      return 'Cannot empty';
    }
    if (value.length < max) {
      return 'Maximum length is $max';
    }
    return null;
  }
}
