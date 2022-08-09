// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatelessWidget {
  final double height;
  const CustomDrawer({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: height * 0.5,
            decoration: const BoxDecoration(
              color: Color.fromARGB(221, 208, 177, 177),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 3, 98, 240),
                  // Color.fromARGB(143, 214, 73, 63),
                  // Color.fromARGB(183, 75, 123, 76),
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.black54,
                  radius: 40,
                  child: Icon(Icons.person, size: 60),
                ),
                SizedBox(height: 10),
                Text('0xdadkg97y6sdf0hgg',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(LineIcons.heart),
            title: const Text(
              'Donations',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
