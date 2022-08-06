// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Screens/cat_donates_screen.dart';

class SingleCat extends StatelessWidget {
  final String catName;
  final String catIcon;
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
      onTap: () => Navigator.of(context).pushNamed(CatDonated.routeName),
      child: SizedBox(
        height: 140,
        width: 160,
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                catIcon,
                height: 30,
                color: Colors.white,
                allowDrawingOutsideViewBox: true,
              ),
              const SizedBox(height: 10),
              Text(
                catName,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
