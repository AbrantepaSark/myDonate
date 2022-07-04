// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Screens/single_donate.dart';

class SingleDonate extends StatelessWidget {
  final String heading, image, days, amount;

  const SingleDonate({
    Key? key,
    required this.heading,
    required this.image,
    required this.days,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget description(IconData icon, Color color, String data) {
      return Row(
        children: [
          Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 5),
          Text(
            data,
            style: TextStyle(color: color),
          ),
        ],
      );
    }

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(SingleDonateScreen.routeName);
      },
      child: Stack(
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 179, 252, 33),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    description(Icons.access_time_outlined, Colors.white, days),
                    description(Icons.account_balance_wallet_outlined,
                        Colors.white, amount),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
