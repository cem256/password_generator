import 'package:flutter/material.dart';

import '../constants/view_constants.dart';

class ProductTheme {
  static final ProductTheme _instance = ProductTheme._init();
  static ProductTheme get instance => _instance;

  ProductTheme._init();

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

  final _fontFamily = "RobotMono";

  final _colorSchemeSeed = Colors.amber;

  final _splashColor = Colors.transparent;

  final _highlightColor = Colors.transparent;

  final _appBarTheme = const AppBarTheme(
    centerTitle: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: ViewConstants.radius,
      ),
    ),
  );

  final SnackBarThemeData _snackBarTheme = const SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    elevation: 30,
  );
}
