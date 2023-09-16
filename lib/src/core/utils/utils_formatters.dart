import 'package:flutter/services.dart';

class UtilsFormatters {
  static FilteringTextInputFormatter doubleInput() {
    return FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,}'));
  }

  static FilteringTextInputFormatter intInput() {
    return FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));
  }

  static TextInputFormatter upperCase() {
    return UpperCaseTextFormatter();
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
