// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
//import 'package:flutter_svg/flutter_svg.dart';

// import './Drawer.dart';
import './Screens/Summary.dart';
import './Screens/Funds.dart';
import './Screens/Donation.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/user_dashboard';
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var currentPage = DashboardSections.summary;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // ignore: prefer_const_constructors
    Widget container = SizedBox();

    if (currentPage == DashboardSections.summary) {
      container = SummaryScreen(height: height);
    } else if (currentPage == DashboardSections.funds) {
      container = const FundsScreen();
    } else if (currentPage == DashboardSections.donation) {
      container = const DonationScreen();
    }

    var drawer2 = Drawer(
      elevation: 1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 3, 98, 240),
                  Color.fromARGB(137, 214, 73, 63),
                  //Color.fromARGB(183, 75, 123, 76),
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            height: height * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.black54,
                  radius: 40,
                  child: Icon(Icons.person, size: 60),
                ),
                SizedBox(height: 10),
                Text('0xdadkg97y6sdf0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(LineIcons.barChart),
            title: const Text(
              'Summary',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {
              setState(() {
                currentPage = DashboardSections.summary;
                Navigator.of(context).pop();
              });
            },
          ),
          ListTile(
            leading: const Icon(LineIcons.wallet),
            title: const Text(
              'Funds',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {
              setState(() {
                currentPage = DashboardSections.funds;
                Navigator.of(context).pop();
              });
            },
          ),
          ListTile(
            leading: const Icon(LineIcons.heart),
            title: const Text(
              'Donations',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {
              setState(() {
                currentPage = DashboardSections.donation;
                Navigator.of(context).pop();
              });
            },
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('My Account'),
        titleTextStyle: const TextStyle(color: Colors.black),
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 110,
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 3, 98, 240),
                      // Color.fromARGB(143, 214, 73, 63),
                      Color.fromARGB(183, 75, 123, 76),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      '0x00067gj78fddkjg',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Check your Statistics on myDonate',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              container,
            ],
          ),
        ),
      ),
      drawer: drawer2,
    );
  }
}

enum DashboardSections {
  summary,
  funds,
  donation,
}
