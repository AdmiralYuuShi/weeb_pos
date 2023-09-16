import 'package:flutter/material.dart';

class AppEdgeInsets {
  final BuildContext _ctx;
  const AppEdgeInsets(this._ctx);

  // Example for future use of different size based on device size
  // double _adjustVal(double val) {
  //   double adjusted = val;
  //   if (_ctx.isMobile) {
  //     adjusted = val - 10;
  //   } else if (_ctx.size!.width < 300) {
  //     if (val > 90) {
  //       adjusted = val - 80;
  //     }
  //   }
  //   return adjusted;
  // }
  // EdgeInsets all(double val) => EdgeInsets.all(_adjustVal(val));

  /// ```dart
  /// EdgeInsets.zero
  /// ```
  EdgeInsets get zero => EdgeInsets.zero;

  /// ```dart
  /// EdgeInsets.all(val)
  /// ```
  EdgeInsets all(double val) => EdgeInsets.all(val);

  /// ```dart
  /// EdgeInsets.symmetric(horizontal: x, vertical: y)
  /// ```
  EdgeInsets xy(double x, double y) => EdgeInsets.symmetric(vertical: y, horizontal: x);

  /// ```dart
  /// EdgeInsets.symmetric(vertical: val)
  /// ```
  EdgeInsets vertical(double val) => EdgeInsets.symmetric(vertical: val);

  /// ```dart
  /// EdgeInsets.symmetric(horizontal: val)
  /// ```
  EdgeInsets horizontal(double val) => EdgeInsets.symmetric(horizontal: val);

  /// ```dart
  /// EdgeInsets.only(top: val)
  /// ```
  EdgeInsets top(double val) => EdgeInsets.only(top: val);

  /// ```dart
  /// EdgeInsets.only(bottom: val)
  /// ```
  EdgeInsets bottom(double val) => EdgeInsets.only(bottom: val);

  /// ```dart
  /// EdgeInsets.only(right: val)
  /// ```
  EdgeInsets right(double val) => EdgeInsets.only(right: val);

  /// ```dart
  /// EdgeInsets.only(left: val)
  /// ```
  EdgeInsets left(double val) => EdgeInsets.only(left: val);

  /// ```dart
  /// EdgeInsets.only(left: val, right: val)
  /// ```
  EdgeInsets lr(double val) => EdgeInsets.only(left: val, right: val);

  /// ```dart
  /// EdgeInsets.only(top: val, bottom: val)
  /// ```
  EdgeInsets tb(double val) => EdgeInsets.only(top: val, bottom: val);

  /// ```dart
  /// EdgeInsets.fromLTRB(left, top, rigth, bottom)
  /// ```
  EdgeInsets ltrb(double l, double t, double r, double b) => EdgeInsets.fromLTRB(l, t, r, b);
}
