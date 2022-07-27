// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBudge extends StatelessWidget {
  final String iconName;
  final String heading;
  final String text;
  const CustomBudge({
    Key? key,
    required this.iconName,
    required this.heading,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(iconName, height: 50),
        const SizedBox(height: 5),
        Text(
          heading,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
