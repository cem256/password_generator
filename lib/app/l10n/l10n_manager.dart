import 'package:flutter/material.dart';

import 'package:password_generator/app/constants/asset_constants.dart';

class L10nManager {
  L10nManager._init();
  static final L10nManager _instance = L10nManager._init();
  static L10nManager get instance => _instance;

  final en = const Locale('en', 'US');

  final path = AssetConstants.translations;

  List<Locale> get supportedLocales => [en];
}
