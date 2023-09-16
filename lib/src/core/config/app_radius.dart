import 'package:flutter/material.dart';

class AppBorderRadius {
  final BuildContext _ctx;
  const AppBorderRadius(this._ctx);

  // Example for future use of different size based on device size
  // double _adjustVal(double val) {
  //   double adjusted = val;
  //   if (_ctx.isMobile) {
  //     adjusted = val - 4;
  //   } else if (_ctx.size!.width < 300) {
  //     if (val > 8) {
  //       adjusted = val - 6;
  //     }
  //   }
  //   return adjusted;
  // }
  // BorderRadius all(double val) => BorderRadius.all(Radius.circular(_adjustVal(val)));

  /// ```dart
  /// BorderRadius.zero
  /// ```
  BorderRadius get zero => BorderRadius.zero;

  /// ```dart
  /// BorderRadius.all(Radius.circular(val));
  /// ```
  BorderRadius all(double val) => BorderRadius.all(Radius.circular(val));

  /// ```dart
  /// BorderRadius.all(Radius.circular(100));
  /// ```
  BorderRadius get circle => BorderRadius.all(Radius.circular(100));

  /// ```dart
  /// BorderRadius.horizontal(left: Radius.circular(val));
  /// ```
  BorderRadius left(double val) =>
      BorderRadius.horizontal(left: Radius.circular(val));

  /// ```dart
  /// BorderRadius.horizontal(right: Radius.circular(val));
  /// ```
  BorderRadius right(double val) =>
      BorderRadius.horizontal(right: Radius.circular(val));

  /// ```dart
  /// BorderRadius.horizontal(right: Radius.circular(val), left: Radius.circular(val));
  /// ```
  BorderRadius horizontal(double val) => BorderRadius.horizontal(
      right: Radius.circular(val), left: Radius.circular(val));

  /// ```dart
  /// BorderRadius.vertical(top: Radius.circular(val), bottom: Radius.circular(val));
  /// ```
  BorderRadius vertical(double val) => BorderRadius.vertical(
      top: Radius.circular(val), bottom: Radius.circular(val));

  /// ```dart
  /// BorderRadius.vertical(top: Radius.circular(val));
  /// ```
  BorderRadius top(double val) =>
      BorderRadius.vertical(top: Radius.circular(val));

  /// ```dart
  /// BorderRadius.vertical(bottom: Radius.circular(val));
  /// ```
  BorderRadius bottom(double val) =>
      BorderRadius.vertical(bottom: Radius.circular(val));

  /// ```dart
  /// BorderRadius.only();
  /// ```
  BorderRadius only({
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) =>
      BorderRadius.only(
        topLeft: Radius.circular(topLeft ?? 0),
        topRight: Radius.circular(topRight ?? 0),
        bottomLeft: Radius.circular(bottomLeft ?? 0),
        bottomRight: Radius.circular(bottomRight ?? 0),
      );
}
