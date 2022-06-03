// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/about";
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Heading(text: "About Us"),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(height: 25),
            Heading(text: "Terms & Conditions"),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  const Heading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.red, fontSize: 15),
        ),
        Container(
          width: 50,
          height: 3,
          color: Colors.red,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
