import 'dart:io';

import 'package:flutter/material.dart';
import 'package:password_generator/app/constants/string_constants.dart';
import 'package:share_plus/share_plus.dart';

abstract final class ShareAppUtils {
  ShareAppUtils._();

  static Future<void> shareApp(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;
    await Share.share(
      StringConstants.googlePlayUrl,
      // For the iPads this parameter is required
      // https://pub.dev/packages/share_plus#known-issues
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );
  }
}
