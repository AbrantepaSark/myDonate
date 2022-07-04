// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SummaryScreen extends StatefulWidget {
  final double height;
  const SummaryScreen({Key? key, required this.height}) : super(key: key);

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        summaryData(
          LineIcons.handHoldingHeart,
          'Pending Funds',
          'All Funds To Be Approved',
          '5',
        ),
        const SizedBox(height: 30),
        summaryData(
          LineIcons.heart,
          'Donations',
          'All Donations Made',
          '3',
        ),
        const SizedBox(height: 30),
        summaryData(
          LineIcons.wallet,
          'Donated',
          'Total Amount Donated',
          '200 ETH',
        ),
      ],
    );
  }

  Container summaryData(icon, heading, text, number) {
    return Container(
      width: double.infinity,
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(36, 70, 58, 58),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(1, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon, size: 45),
          Text(
            heading,
            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          Text(text),
          Text(
            number,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
        ],
      ),
    );
  }
}
