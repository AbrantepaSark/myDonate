// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../Screens/single_donate.dart';

class SingleDonate extends StatelessWidget {
  final String heading, image, days, amount, globe;

  const SingleDonate({
    Key? key,
    required this.heading,
    required this.image,
    required this.days,
    required this.amount,
    required this.globe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget description(IconData icon, Color color, String data) {
      return Row(
        children: [
          Icon(icon, color: Colors.black, size: 18),
          const SizedBox(width: 5),
          Text(
            data,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: color),
          ),
        ],
      );
    }

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(SingleDonateScreen.routeName);
      },
      child: Container(
        width: 300,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!,
                blurRadius: 2,
                spreadRadius: 1,
                offset: const Offset(1, 2),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: SizedBox(
                height: 140,
                width: double.infinity,
                child: Image.asset(image,
                    fit: BoxFit.cover, alignment: Alignment.topCenter),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        heading,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //const SizedBox(height: 2),
                      description(
                          Icons.access_time_outlined, Colors.black, days),
                      description(
                        Icons.account_balance_wallet_outlined,
                        Colors.black,
                        amount,
                      ),
                      description(LineIcons.globe, Colors.black, globe),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
