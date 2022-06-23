// ignore_for_file: file_names

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
    List<Map> donation = [
      {
        'id': 1,
        'category': 'Health',
        'image': 'assets/images/health.jpg',
        'days': '10 days left',
        'amount': '\$1000 ETH-USD',
      },
      {
        'id': 2,
        'category': 'Education',
        'image': 'assets/images/science.jpg',
        'days': '20 days left',
        'amount': '\$2000 ETH-USD',
      },
    ];
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
                  fontSize: width * 0.07,
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
            Container(
              height: 120,
              width: double.infinity,
              color: const Color.fromARGB(245, 240, 241, 244),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CustomBudge(
                    icon: Icons.add_chart_outlined,
                    heading: '20k+',
                    text: 'Fundraisers',
                  ),
                  CustomBudge(
                    icon: Icons.person_outline,
                    heading: '10M+',
                    text: 'Donated',
                  ),
                  CustomBudge(
                    icon: Icons.account_balance_wallet_outlined,
                    heading: '500ETH+',
                    text: 'Raised',
                  ),
                ],
              ),
            ),
            //const CustomBudge(),
            const SizedBox(height: 20),
            const Text(
              'Recent Donations',
              style: TextStyle(color: Colors.red, fontSize: 15),
            ),
            const Divider(height: 20),
            SizedBox(
              height: 230,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: donation.length,
                itemBuilder: (ctx, i) => SingleDonate(
                  category: donation[i]["category"],
                  image: donation[i]["image"],
                  days: donation[i]["days"],
                  amount: donation[i]["amount"],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Trending Donations',
              style: TextStyle(color: Colors.red, fontSize: 15),
            ),
            const Divider(height: 20),
            SizedBox(
              height: 230,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: donation.length,
                itemBuilder: (ctx, i) => SingleDonate(
                  category: donation[i]["category"],
                  image: donation[i]["image"],
                  days: donation[i]["days"],
                  amount: donation[i]["amount"],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
