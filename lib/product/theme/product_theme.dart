import 'package:flutter/material.dart';

import '../constants/view_constants.dart';

class ProductTheme {
  static final ProductTheme _instance = ProductTheme._init();
  static ProductTheme get instance => _instance;

  ProductTheme._init();

  ThemeData get darkTheme => ThemeData(
        fontFamily: "RobotoMono",
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.amber,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        appBarTheme: appBarTheme,
        snackBarTheme: snackBarTheme,
      );

  ThemeData get lightTheme => ThemeData(
        fontFamily: "RobotoMono",
        brightness: Brightness.light,
        colorSchemeSeed: Colors.amber,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        appBarTheme: appBarTheme,
        snackBarTheme: snackBarTheme,
      );

  final appBarTheme = const AppBarTheme(
    centerTitle: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: ViewConstants.radius,
      ),
    ),
  );

  final SnackBarThemeData snackBarTheme = const SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    elevation: 30,
  );
}
