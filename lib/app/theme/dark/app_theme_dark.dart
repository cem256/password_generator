import 'package:flutter/material.dart';
import 'package:password_generator/app/theme/base/base_theme.dart';

final class AppThemeDark extends BaseTheme {
  AppThemeDark({required ColorScheme? colorScheme})
      : super(colorScheme: colorScheme ?? ColorScheme.fromSeed(seedColor: Colors.amber, brightness: Brightness.dark));
}
