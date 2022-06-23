// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SingleDonate extends StatelessWidget {
  final String category, image, days, amount;

  const SingleDonate({
    Key? key,
    required this.category,
    required this.image,
    required this.days,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180,
          height: 230,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            width: 180,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  category,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  days,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                Text(
                  amount,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 183, 212, 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
