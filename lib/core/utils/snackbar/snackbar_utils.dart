import 'package:flutter/material.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';

abstract class SnackbarUtils {
  static void showSnackbar({required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: context.durationDefault,
          margin: context.paddingAllVeryHigh1x,
          content: Text(message, textAlign: TextAlign.center),
        ),
      );
  }
}
