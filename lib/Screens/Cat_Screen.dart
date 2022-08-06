// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:line_icons/line_icons.dart';

import '../Widgets/singleCat.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = "/category";
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> category = [
      {
        "title": "Environmental",
        "icon": "assets/images/leaf-outline.svg",
        "color": const Color(0xffff5657)
      },
      {
        "title": "Education",
        "icon": "assets/images/book-outline.svg",
        "color": const Color.fromARGB(255, 134, 132, 132)
      },
      {
        "title": "Disaster",
        "icon": "assets/images/flask-outline.svg",
        "color": const Color.fromARGB(255, 32, 189, 108)
      },
      {
        "title": "Health",
        "icon": "assets/images/pulse-outline.svg",
        "color": const Color.fromARGB(255, 233, 195, 43)
      },
      {
        "title": "Famine",
        "icon": "assets/images/fast-food-outline.svg",
        "color": const Color.fromARGB(255, 79, 131, 165)
      },
      {
        "title": "Community",
        "icon": "assets/images/people-outline.svg",
        "color": const Color.fromARGB(255, 107, 87, 87)
      },
      {
        "title": "War",
        "icon": "assets/images/sad-outline.svg",
        "color": const Color.fromARGB(255, 192, 167, 57)
      },
      {
        "title": "Others",
        "icon": "assets/images/help-outline.svg",
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
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            color: Colors.grey[300],
            child: const Text(
              'Categories',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 10),
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
