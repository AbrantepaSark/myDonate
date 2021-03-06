// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Screens/single_cat_screen.dart';

class SingleCat extends StatelessWidget {
  final String catName;
  final IconData catIcon;
  final Color color;
  const SingleCat(
      {Key? key,
      required this.catName,
      required this.catIcon,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(SingleCatScreen.routeName),
      child: SizedBox(
        height: 200,
        width: 140,
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                catIcon,
                size: 50,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.white),
              const SizedBox(height: 10),
              Text(
                catName,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
