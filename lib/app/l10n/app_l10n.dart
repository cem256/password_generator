import 'package:flutter/material.dart';

abstract final class AppL10n {
  AppL10n._();

  static const fallbackLocale = Locale('en', 'US');

  static List<Locale> get supportedLocales => [
        const Locale('en', 'US'),
        const Locale('tr', 'TR'),
        const Locale('zh', 'CN'),
      ];
}
