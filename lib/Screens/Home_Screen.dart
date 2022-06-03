// ignore_for_file: unused_import
import 'package:flutter/material.dart';

import '../Widgets/badge.dart';
import '../Widgets/singleDonate.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 5.0,
          bottom: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MyDonate',
              style: TextStyle(
                  color: const Color.fromARGB(255, 6, 57, 99),
                  fontSize: width * 0.065,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Donate to support",
              style: TextStyle(
                fontSize: width * 0.038,
                color: const Color.fromARGB(255, 8, 58, 99),
              ),
            ),
            const SizedBox(height: 10),
            const CustomBudge(),
            const SizedBox(height: 20),
            const Text(
              'Recent',
              style: TextStyle(color: Colors.red, fontSize: 15),
            ),
            const Divider(height: 20),
            SizedBox(
              height: 230,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (ctx, _) => const SingleDonate(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Popular',
              style: TextStyle(color: Colors.red, fontSize: 15),
            ),
            const Divider(height: 20),
            SizedBox(
              height: 230,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (ctx, _) => const SingleDonate(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
