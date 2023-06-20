import 'package:ecommerce_design/utils/constants.dart';
import 'package:flutter/material.dart';

class ReusedButton extends StatelessWidget {
  const ReusedButton({required this.onTap, required this.icon, required this.text, super.key});

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        minimumSize: const Size(
          double.infinity,
          50,
        ),
      ),
      onPressed: onTap,
      icon: Icon(icon),
      label: Text(text),
    );
  }
}
