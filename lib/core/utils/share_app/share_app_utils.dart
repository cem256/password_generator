import 'dart:io';

import 'package:password_generator/app/constants/string_constants.dart';
import 'package:share_plus/share_plus.dart';

abstract final class ShareAppUtils {
  ShareAppUtils._();

  static Future<void> shareApp() async {
    await Share.share(Platform.isAndroid ? StringConstants.googlePlayUrl : StringConstants.appStoreUrl);
  }
}
