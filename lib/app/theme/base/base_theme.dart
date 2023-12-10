import 'package:flutter/material.dart';
import 'package:password_generator/app/theme/constants/theme_constants.dart';

abstract base class BaseTheme {
  Brightness get brightness;

  ThemeData get theme {
    return ThemeData(
      fontFamily: 'RobotoMono',
      brightness: brightness,
      colorSchemeSeed: Colors.amber,
      appBarTheme: _appBarTheme,
      dialogTheme: _dialogTheme,
      navigationBarTheme: _navigationBarTheme,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }

  final AppBarTheme _appBarTheme = const AppBarTheme(
    centerTitle: true,
  );

  final DialogTheme _dialogTheme = DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: ThemeConstants.borderRadiusCircular,
    ),
  );

  final NavigationBarThemeData _navigationBarTheme = NavigationBarThemeData(
    indicatorShape: RoundedRectangleBorder(
      borderRadius: ThemeConstants.borderRadiusCircular,
    ),
  );
}
