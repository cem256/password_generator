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
      expansionTileTheme: _expansionTileThemeData,
      listTileTheme: _listTileThemeData,
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

  final ExpansionTileThemeData _expansionTileThemeData =
      const ExpansionTileThemeData(tilePadding: EdgeInsets.zero, shape: Border());

  final ListTileThemeData _listTileThemeData = const ListTileThemeData(contentPadding: EdgeInsets.zero);

  final NavigationBarThemeData _navigationBarTheme = NavigationBarThemeData(
    indicatorShape: RoundedRectangleBorder(
      borderRadius: ThemeConstants.borderRadiusCircular,
    ),
  );
}
