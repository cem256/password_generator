import 'package:flutter/material.dart';

import '../constants/asset_constants.dart';

class L10nManager {
  static final L10nManager _instance = L10nManager._init();
  static L10nManager get instance => _instance;
  L10nManager._init();

  final en = const Locale('en', "US");

  final path = AssetConstants.translations;

  List<Locale> get supportedLocales => [en];
}
