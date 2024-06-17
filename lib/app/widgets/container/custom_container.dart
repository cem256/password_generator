import 'package:flutter/material.dart';
import 'package:password_generator/app/theme/constants/theme_constants.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.colorScheme.onSecondary,
      child: Container(
        padding: context.paddingHorizontalDefault,
        decoration: BoxDecoration(
          borderRadius: ThemeConstants.borderRadiusCircular,
        ),
        child: child,
      ),
    );
  }
}
