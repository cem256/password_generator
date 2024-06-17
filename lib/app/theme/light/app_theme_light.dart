import 'package:flutter/material.dart';
import 'package:password_generator/app/theme/base/base_theme.dart';

final class AppThemeLight extends BaseTheme {
  AppThemeLight({required ColorScheme? colorScheme})
      : super(colorScheme: colorScheme ?? ColorScheme.fromSeed(seedColor: Colors.amber));
}
