import 'package:flutter/material.dart';
import 'package:password_generator/app/theme/constants/theme_constants.dart';

abstract base class BaseTheme {
  Brightness get brightness;

  ThemeData get theme {
    return ThemeData(
      fontFamily: 'RobotoMono',
      brightness: brightness,
      colorSchemeSeed: Colors.amber,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      appBarTheme: _appBarTheme,
      snackBarTheme: _snackBarTheme,
    );
  }

  final AppBarTheme _appBarTheme = AppBarTheme(
    centerTitle: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: ThemeConstants.radiusCircular,
      ),
    ),
  );

  final SnackBarThemeData _snackBarTheme = const SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    elevation: 30,
  );
}
