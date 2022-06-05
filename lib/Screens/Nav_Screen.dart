// ignore_for_file: file_names

import 'package:flutter/material.dart';

import './home_screen.dart';
import './Cat_Screen.dart';
import './About_Screen.dart';

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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    _displayDialog(BuildContext context) {
      showGeneralDialog(
          context: context,
          barrierDismissible: true,
          transitionDuration: const Duration(microseconds: 2000),
          transitionBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: animation,
                child: child,
              ),
            );
          },
          pageBuilder: (context, animation, secondaryAnimation) {
            return SizedBox(
              height: height * .7,
              width: width * .8,
              child: const Text('hi'),
            );
          });
    }

    return Scaffold(
      body: _pages[_selectedPageIndex],
      floatingActionButton: _selectedPageIndex == 0
          ? FloatingActionButton(
              onPressed: () {
                _displayDialog(context);
              },
              child: const Icon(Icons.add, color: Colors.white),
              tooltip: 'Start fund raising',
              backgroundColor: const Color.fromARGB(255, 185, 53, 44),
            )
          : null,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
        height: height * 0.09,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 24, 97, 156),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(1, 1))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              splashRadius: 0.001,
              onPressed: () {
                setState(() {
                  _selectedPageIndex = 0;
                });
              },
              icon: _selectedPageIndex == 0
                  ? const Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 6, 28, 46),
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              splashRadius: 0.001,
              onPressed: () {
                setState(() {
                  _selectedPageIndex = 1;
                });
              },
              icon: _selectedPageIndex == 1
                  ? const Icon(
                      Icons.category,
                      color: Color.fromARGB(255, 6, 28, 46),
                    )
                  : const Icon(
                      Icons.category_outlined,
                      color: Colors.white,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              splashRadius: 0.001,
              onPressed: () {
                setState(() {
                  _selectedPageIndex = 2;
                });
              },
              icon: _selectedPageIndex == 2
                  ? const Icon(
                      Icons.info,
                      color: Color.fromARGB(255, 6, 28, 46),
                    )
                  : const Icon(
                      Icons.info_outlined,
                      color: Colors.white,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
