import 'dart:ui';

import 'package:flutter/material.dart';

class AppColorsBase {
  static const Color primary = Color(0xFF6200EE);
  static const Color dark = Colors.black;
  static const Color white = Colors.white;
}

class AppColors {
  static const Color primary = Color(0xFF6200EE);
  static const Color dark = AppColorsBase.dark;
  static final Color dark50 = AppColorsBase.dark.withOpacity(0.5);
  static const Color white = Colors.white;
  static const Color transparent = Colors.transparent;
}
