import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    this.isDisabled = false,
    required this.child,
  }) : super(key: key);

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
