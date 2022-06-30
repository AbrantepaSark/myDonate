// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text('Donation page'),
    );
  }
}
