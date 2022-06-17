// ignore_for_file: unused_import
import 'package:flutter/material.dart';

class CustomBudge extends StatelessWidget {
  const CustomBudge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(230, 24, 97, 156),
            Color.fromARGB(200, 185, 53, 44),
          ],
        ),
      ),
      child: const Text(
        " We restore hope to the hopeless, let's build the world together",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
