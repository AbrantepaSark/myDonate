import 'package:flutter/material.dart';

import '../Widgets/singleDonate.dart';

class CatDonated extends StatelessWidget {
  static const routeName = "cat_donates";
  const CatDonated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> donation = [
      {
        'id': 1,
        'heading': 'COVID Support',
        'image': 'assets/images/health.jpg',
        'days': '10 days left',
        'amount': '\$1000 ETH-USD',
        'globe': 'Sultanate of man',
      },
      {
        'id': 2,
        'heading': 'Australia Fire Outbreak',
        'image': 'assets/images/science.jpg',
        'days': '20 days left',
        'amount': '\$2000 ETH-USD',
        'globe': 'Sultanate of man',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Health'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: donation
                  .map(
                    (i) => SizedBox(
                      height: 290,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: SingleDonate(
                          heading: i["heading"],
                          image: i["image"],
                          days: i["days"],
                          amount: i["amount"],
                          globe: i["globe"],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
