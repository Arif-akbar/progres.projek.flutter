import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final Widget label;
  final VoidCallback onPressed;

  const WidgetButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: label,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 24, vertical: 12),
        textStyle: const TextStyle(
          fontSize: 16,
          ),
      ),
    );
  }
}