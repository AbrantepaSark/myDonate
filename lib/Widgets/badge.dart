// ignore_for_file: unused_import
import 'package:flutter/material.dart';

class CustomBudge extends StatelessWidget {
  final IconData icon;
  final String heading;
  final String text;
  const CustomBudge({
    Key? key,
    required this.icon,
    required this.heading,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 34,
          color: const Color(0xff217AE2),
        ),
        const SizedBox(height: 5),
        Text(
          heading,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(text),
      ],
    );
  }
}
