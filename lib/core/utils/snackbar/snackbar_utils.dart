import 'package:flutter/material.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';

abstract final class SnackbarUtils {
  SnackbarUtils._();

  static void showSnackbar({required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: context.durationHigh,
          content: Text(message, textAlign: TextAlign.center),
        ),
      );
  }
}
