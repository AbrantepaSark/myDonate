// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
    var container;

    if (currentPage == DashboardSections.summary) {
      container = const SummaryScreen();
    } else if (currentPage == DashboardSections.funds) {
      container = const SummaryScreen();
    } else if (currentPage == DashboardSections.donation) {
      container = const SummaryScreen();
    }

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
      body: container,
      drawer: Drawer(
        elevation: 1,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: const Color.fromARGB(221, 84, 55, 55),
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
              leading: const Icon(Icons.add_chart_outlined),
              title: const Text(
                'Summary',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                setState(() {
                  currentPage = DashboardSections.summary;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_wallet_outlined),
              title: const Text(
                'Funds',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                setState(() {
                  currentPage = DashboardSections.funds;
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
                currentPage = DashboardSections.donation;
              },
            ),
          ],
        ),
      ),
    );
  }
}

enum DashboardSections {
  summary,
  funds,
  donation,
}
