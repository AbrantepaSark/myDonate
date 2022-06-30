// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_outlined),
            title: const Text(
              'Funds',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {},
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
