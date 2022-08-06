import 'package:flutter/material.dart';

import '../Widgets/singleDonate.dart';

class SingleCatScreen extends StatelessWidget {
  static const routeName = "single_cat_page";
  const SingleCatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> donation = [
      {
        'id': 1,
        'heading': 'COVID Support',
        'image': 'assets/images/health.jpg',
        'days': '10 days left',
        'amount': '\$1000 ETH-USD',
      },
      {
        'id': 2,
        'heading': 'Australia Fire Outbreak',
        'image': 'assets/images/science.jpg',
        'days': '20 days left',
        'amount': '\$2000 ETH-USD',
      },
      {
        'id': 3,
        'heading': 'Australia Fire Outbreak',
        'image': 'assets/images/science.jpg',
        'days': '20 days left',
        'amount': '\$2000 ETH-USD',
      },
      {
        'id': 4,
        'heading': 'COVID Support',
        'image': 'assets/images/health.jpg',
        'days': '10 days left',
        'amount': '\$1000 ETH-USD',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text('Famine'),
        titleTextStyle: const TextStyle(color: Colors.black),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 2,
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        children: List.generate(
          donation.length,
          (i) => SingleDonate(
            heading: donation[i]["heading"],
            image: donation[i]["image"],
            days: donation[i]["days"],
            amount: donation[i]["amount"],
            globe: donation[i]["globe"],
          ),
        ),
      ),
    );
  }
}
