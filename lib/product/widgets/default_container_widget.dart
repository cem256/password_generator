import 'package:flutter/material.dart';

import '../../core/extensions/context_extensions.dart';
import '../constants/view_constants.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingHorizontalDefault,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: ViewConstants.borderCircular,
        color: Theme.of(context).focusColor,
      ),
      child: child,
    );
  }
}
