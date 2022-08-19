// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String header, text;
  const TextContainer({
    Key? key,
    required this.header,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          style: const TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: header,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
