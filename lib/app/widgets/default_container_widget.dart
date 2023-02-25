import 'package:flutter/material.dart';
import 'package:password_generator/app/theme/app_borders.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingHorizontalDefault,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: AppBorders.borderRadiusCircular,
        color: context.theme.focusColor,
      ),
      child: child,
    );
  }
}
