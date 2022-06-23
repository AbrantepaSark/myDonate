// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import './home_screen.dart';
import './Cat_Screen.dart';
import './About_Screen.dart';
import './CreateDonation.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);
  static const routeName = '/nav';
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List _pages = [];

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = const [HomeScreen(), CategoryScreen(), AboutScreen()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    //var width = MediaQuery.of(context).size.width;

    // _displayDialog(BuildContext context) {
    //   showGeneralDialog(
    //       context: context,````````````````
    //       barrierDismissible: true,
    //       transitionDuration: const Duration(microseconds: 2000),
    //       transitionBuilder: (context, animation, secondaryAnimation, child) {
    //         return FadeTransition(
    //           opacity: animation,
    //           child: ScaleTransition(
    //             scale: animation,
    //             child: child,
    //           ),
    //         );
    //       },
    //       pageBuilder: (context, animation, secondaryAnimation) {
    //         return SizedBox(
    //           height: height * .7,
    //           width: width * .8,
    //           child: const Text('hi'),
    //         );
    //       });
    // }

    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedPageIndex],
      floatingActionButton: _selectedPageIndex == 0
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CreateDonate.routeName);
              },
              child: const Icon(Icons.add, color: Colors.white),
              tooltip: 'Start fund raising',
              backgroundColor: Colors.red,
            )
          : null,
      bottomNavigationBar: Container(
        color: const Color(0xff217AE2),
        //color: const Color(0xff32ECB4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            //backgroundColor: Colors.lightBlue[300]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: const [
              GButton(
                icon: LineIcons.home,
                iconColor: Colors.white,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.heart,
                iconColor: Colors.white,
                text: 'Donations',
              ),
              GButton(
                icon: LineIcons.infoCircle,
                iconColor: Colors.white,
                text: 'About',
              ),
            ],
            selectedIndex: _selectedPageIndex,
            onTabChange: (index) {
              setState(() {
                _selectedPageIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
