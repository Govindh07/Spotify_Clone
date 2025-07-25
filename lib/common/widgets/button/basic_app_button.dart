import 'package:flutter/material.dart';

class appButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double ? height;

  const appButton({
    required this.onPressed,
    required this.title,
    this.height,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize:  Size.fromHeight(height ?? 80)
        ),
        child: Text(title));
  }
}
