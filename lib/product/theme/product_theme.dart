import 'package:flutter/material.dart';

class ProductTheme {
  static final ProductTheme _instance = ProductTheme._init();
  static ProductTheme get instance => _instance;

  ProductTheme._init();

  final ThemeData theme = ThemeData(
    fontFamily: "RobotoMono",
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.amber,
    appBarTheme: const AppBarTheme(centerTitle: true),
  );
}
