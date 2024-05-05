import 'package:flutter/material.dart';

abstract final class AppL10n {
  AppL10n._();

  static const fallbackLocale = Locale('en');

  static List<Locale> get supportedLocales => [
        const Locale('zh'), // Chinese
        const Locale('de'), // German
        const Locale('en'), // English
        const Locale('fr'), // French
        const Locale('ja'), // Japanese
        const Locale('ko'), // Korean
        const Locale('pt'), // Portuguese
        const Locale('ru'), // Russian
        const Locale('es'), // Spanish
        const Locale('tr'), // Turkish
      ];
}
