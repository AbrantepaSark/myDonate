// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../Widgets/singleCat.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = "/category";
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> category = [
      {
        "title": "Environmental",
        "icon": LineIcons.leaf,
        "color": const Color.fromARGB(255, 134, 132, 132)
      },
      {
        "title": "Education",
        "icon": Icons.school_outlined,
        "color": const Color(0xffff5657)
      },
      {
        "title": "Disaster",
        "icon": Icons.warning_amber_outlined,
        "color": const Color.fromARGB(255, 32, 189, 108)
      },
      {
        "title": "Health",
        "icon": Icons.health_and_safety_outlined,
        "color": const Color.fromARGB(255, 233, 195, 43)
      },
      {
        "title": "Famine",
        "icon": Icons.table_bar_outlined,
        "color": const Color.fromARGB(255, 79, 131, 165)
      },
      {
        "title": "Social",
        "icon": Icons.people_outline,
        "color": const Color.fromARGB(255, 107, 87, 87)
      },
      {
        "title": "War",
        "icon": Icons.local_fire_department_outlined,
        "color": const Color.fromARGB(255, 192, 167, 57)
      },
      {
        "title": "Others",
        "icon": Icons.add_home_outlined,
        "color": const Color.fromARGB(255, 153, 147, 119)
      },
    ];

    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            color: const Color.fromARGB(245, 240, 241, 244),
            child: const Text(
              'Categories',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
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
          ),
        ],
      ),
    );
  }
}
