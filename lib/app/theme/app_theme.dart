import 'package:flutter/material.dart';

import 'package:password_generator/app/theme/app_borders.dart';

class AppTheme {
  AppTheme._init();
  static final AppTheme _instance = AppTheme._init();
  static AppTheme get instance => _instance;

  ThemeData get darkTheme => ThemeData(
        fontFamily: _fontFamily,
        brightness: Brightness.dark,
        colorSchemeSeed: _colorSchemeSeed,
        splashColor: _splashColor,
        highlightColor: _highlightColor,
        appBarTheme: _appBarTheme,
        snackBarTheme: _snackBarTheme,
      );

  ThemeData get lightTheme => ThemeData(
        fontFamily: _fontFamily,
        brightness: Brightness.light,
        colorSchemeSeed: _colorSchemeSeed,
        splashColor: _splashColor,
        highlightColor: _highlightColor,
        appBarTheme: _appBarTheme,
        snackBarTheme: _snackBarTheme,
      );

  final _fontFamily = 'RobotMono';

  final _colorSchemeSeed = Colors.amber;

  final _splashColor = Colors.transparent;

  final _highlightColor = Colors.transparent;

  final _appBarTheme = AppBarTheme(
    centerTitle: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: AppBorders.radiusCircular,
      ),
    ),
  );

  final SnackBarThemeData _snackBarTheme = const SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    elevation: 30,
  );
}
