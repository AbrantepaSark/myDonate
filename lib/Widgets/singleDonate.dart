// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SingleDonate extends StatelessWidget {
  const SingleDonate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180,
          height: 230,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/health.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
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
              children: const [
                Text(
                  "Health Care",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "20 Days Left",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                Text(
                  "\$20,000 ETH-USD",
                  style: TextStyle(
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
