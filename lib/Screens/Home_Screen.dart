// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:line_icons/line_icons.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import '../Widgets/badge.dart';
import '../Widgets/singleDonate.dart';
import '../Widgets/singleCat.dart';

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
        'globe': 'Sultanate of man',
      },
      {
        'id': 2,
        'heading': 'Australia Fire Outbreak',
        'image': 'assets/images/science.jpg',
        'days': '20 days left',
        'amount': '\$2000 ETH-USD',
        'globe': 'Sultanate of man',
      },
    ];
    List<Map<String, dynamic>> category = [
      {
        "title": "Environmental",
        "icon": "assets/images/leaf-outline.svg",
        "color": const Color(0xffff5657)
      },
      {
        "title": "Education",
        "icon": "assets/images/book-outline.svg",
        "color": const Color.fromARGB(255, 134, 132, 132)
      },
      {
        "title": "Disaster",
        "icon": "assets/images/flask-outline.svg",
        "color": const Color.fromARGB(255, 32, 189, 108)
      },
      {
        "title": "Health",
        "icon": "assets/images/pulse-outline.svg",
        "color": const Color.fromARGB(255, 233, 195, 43)
      },
      {
        "title": "Famine",
        "icon": "assets/images/fast-food-outline.svg",
        "color": const Color.fromARGB(255, 79, 131, 165)
      },
      {
        "title": "Community",
        "icon": "assets/images/people-outline.svg",
        "color": const Color.fromARGB(255, 107, 87, 87)
      },
      {
        "title": "War",
        "icon": "assets/images/sad-outline.svg",
        "color": const Color.fromARGB(255, 192, 167, 57)
      },
      {
        "title": "Others",
        "icon": "assets/images/help-outline.svg",
        "color": const Color.fromARGB(255, 153, 147, 119)
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
                  fontSize: width * 0.08,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Put a smile on someone's faces",
              style: TextStyle(
                fontSize: width * 0.045,
                color: Colors.grey[900],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              height: height * .16,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CustomBudge(
                    iconName: "assets/images/heart-circle-outline.svg",
                    heading: '20k+',
                    text: 'Fundraisers',
                  ),
                  CustomBudge(
                    iconName: "assets/images/person-add-outline.svg",
                    heading: '10M+',
                    text: 'Donated',
                  ),
                  CustomBudge(
                    iconName: "assets/images/wallet-outline.svg",
                    heading: '500ETH+',
                    text: 'Raised',
                  ),
                ],
              ),
            ),
            //const CustomBudge(),
            const SizedBox(height: 20),
            Text(
              'Categories',
              style: TextStyle(color: Colors.grey[900], fontSize: 16),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 8),
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (ctx, i) => SingleCat(
                  catName: category[i]["title"],
                  catIcon: category[i]["icon"],
                  color: category[i]["color"],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Pinned Donations',
              style: TextStyle(color: Colors.grey[900], fontSize: 16),
            ),
            const Divider(height: 20),
            SizedBox(
              height: 280,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: donation.length,
                itemBuilder: (ctx, i) => SingleDonate(
                  heading: donation[i]["heading"],
                  image: donation[i]["image"],
                  days: donation[i]["days"],
                  amount: donation[i]["amount"],
                  globe: donation[i]["globe"],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Recent Donations',
              style: TextStyle(color: Colors.grey[900], fontSize: 15),
            ),
            const Divider(height: 20),
            SizedBox(
              height: 280,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: donation.length,
                itemBuilder: (ctx, i) => SingleDonate(
                  heading: donation[i]["heading"],
                  image: donation[i]["image"],
                  days: donation[i]["days"],
                  amount: donation[i]["amount"],
                  globe: donation[i]["globe"],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
