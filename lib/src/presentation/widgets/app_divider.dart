import 'package:flutter/material.dart';
import '../../core/core.dart';

class AppDivider extends StatelessWidget {
  final double? thickness;
  const AppDivider({super.key, this.thickness});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: thickness ?? 1,
      color: context.colorTheme.borderColor,
    );
  }
}
