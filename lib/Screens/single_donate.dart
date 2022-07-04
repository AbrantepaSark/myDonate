import 'package:flutter/material.dart';

class SingleDonateScreen extends StatefulWidget {
  static const routeName = 'single_donate_screen';
  const SingleDonateScreen({Key? key}) : super(key: key);

  @override
  State<SingleDonateScreen> createState() => _SingleDonateScreenState();
}

class _SingleDonateScreenState extends State<SingleDonateScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('single donate'),
      ),
    );
  }
}
