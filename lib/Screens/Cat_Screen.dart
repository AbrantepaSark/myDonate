// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../Widgets/singleCat.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = "/category";
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> category = [
      {
        "title": "Education",
        "icon": Icons.school,
        "color": const Color(0xffff5657)
      },
      {
        "title": "Health Care",
        "icon": Icons.health_and_safety,
        "color": const Color(0xffffd73c)
      },
      {
        "title": "Disaster",
        "icon": Icons.fireplace,
        "color": const Color.fromARGB(255, 32, 189, 108)
      },
      {
        "title": "Famine",
        "icon": Icons.copy_all_outlined,
        "color": const Color.fromARGB(255, 79, 131, 165)
      },
      {
        "title": "Social",
        "icon": Icons.connected_tv,
        "color": const Color.fromARGB(255, 107, 87, 87)
      },
      {
        "title": "War",
        "icon": Icons.group,
        "color": const Color.fromARGB(255, 192, 167, 57)
      },
    ];

    return SafeArea(
      child: GridView.count(
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 8,
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        children: List.generate(
          category.length,
          (i) => SingleCat(
            catName: category[i]['title'],
            catIcon: category[i]['icon'],
            color: category[i]['color'],
          ),
        ),
      ),
    );
  }
}
