import 'package:flutter/material.dart';

import '../constants/view_constants.dart';

class ProductTheme {
  static final ProductTheme _instance = ProductTheme._init();
  static ProductTheme get instance => _instance;

  ProductTheme._init();

  final ThemeData theme = ThemeData(
    fontFamily: "RobotoMono",
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.amber,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: ViewConstants.radius,
        ),
      ),
    ),
  );
}
