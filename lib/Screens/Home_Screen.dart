// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:line_icons/line_icons.dart';
//import 'package:flutter_svg/flutter_svg.dart';

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
    var height = MediaQuery.of(context).size.height;
    List<Map> donation = [
      {
        'id': 1,
        'heading': 'COVID Support',
        'image': 'assets/images/health.jpg',
        'days': '10 days left',
        'amount': '\$1000 ETH-USD',
      },
      {
        'id': 2,
        'heading': 'Australia Fire Outbreak',
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
                  color: Colors.grey[900],
                  fontSize: width * 0.07,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Put a smile on someone's faces",
              style: TextStyle(
                fontSize: width * 0.038,
                color: Colors.grey[900],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              height: height * .55,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CustomBudge(
                    iconName: "assets/images/heart-cirlcle-outlined.svg",
                    heading: '20k+',
                    text: 'Fundraisers',
                  ),
                  CustomBudge(
                    iconName: "assets/images/heart-cirlcle-outlined.svg",
                    heading: '10M+',
                    text: 'Donated',
                  ),
                  CustomBudge(
                    iconName: "assets/images/heart-cirlcle-outlined.svg",
                    heading: '500ETH+',
                    text: 'Raised',
                  ),
                ],
              ),
            ),
            //const CustomBudge(),
            const SizedBox(height: 20),
            const Text(
              'Pinned Donations',
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
                  heading: donation[i]["heading"],
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
                  heading: donation[i]["heading"],
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
