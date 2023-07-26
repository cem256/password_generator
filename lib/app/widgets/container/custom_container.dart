import 'package:flutter/material.dart';
import 'package:password_generator/app/theme/constants/theme_constants.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: context.paddingHorizontalDefault,
      decoration: BoxDecoration(
        borderRadius: ThemeConstants.borderRadiusCircular,
        color: context.theme.focusColor,
      ),
      child: child,
    );
  }
}
