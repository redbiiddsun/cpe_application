import 'package:flutter/material.dart';

class ScreenInformation {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static EdgeInsets? screenNotch;
  static double? defaultSize;
  static Orientation? orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    screenNotch = _mediaQueryData!.viewPadding;
    orientation = _mediaQueryData!.orientation;
  }
}
