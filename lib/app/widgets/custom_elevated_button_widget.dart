import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onPressed,
    required this.child,
    this.isDisabled = false,
    super.key,
  });

  final VoidCallback onPressed;
  final bool isDisabled;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      child: child,
    );
  }
}
