// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:line_icons/line_icons.dart';

class SummaryScreen extends StatelessWidget {
  final double height;
  const SummaryScreen({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        summaryData(
          'assets/images/heart-half-outline.svg',
          'Pending Funds',
          'All Funds To Be Approved',
          '5',
        ),
        const SizedBox(height: 30),
        summaryData(
          'assets/images/heart-outline.svg',
          'Donations',
          'All Donations Made',
          '3',
        ),
        const SizedBox(height: 30),
        summaryData(
          'assets/images/wallet-outline.svg',
          'Donated',
          'Total Amount Donated',
          '0.000000 ETH',
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
          SvgPicture.asset(
            icon,
            height: 43,
            color: const Color.fromARGB(255, 9, 39, 65),
            allowDrawingOutsideViewBox: true,
          ),
          Text(
            heading,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(text),
          Text(
            number,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ],
      ),
    );
  }
}
