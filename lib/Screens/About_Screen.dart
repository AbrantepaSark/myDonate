// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Widgets/about_card.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/about";
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'About MyDonate',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "The world can only become a better if we all dream of making the world a better place to live in. That desire to offer alms to people, fix communities, or better still contribute to the development of a nation. At Mydonate, we encourage all individuals and organisations help in this regard with any of the widely used and approved cryptocurrency because that is the only way we can make the world a better place.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black54,
                height: 1.5,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "What we intend to do is to create and contribute to the giving layer of the internet with blockchain technology: a community where all individuals, organisations, and nonprofits can champion causes that are of societal concern and raise funds to make a change. With Mydonate, all individuals and organisations have to their disposer tools they need to raise funds and share their cause far and wide and make use of the power of generosity through our usage of blockchain technology.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black54,
                height: 1.5,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 25),
            AboutCard(
              title: "Reach",
              text:
                  "Mydonate helps you share your story far and wide over various platforms to amass support for your cause. We as also have a team that look for great stories to amplify and share with the media and our community.",
              icon: "assets/images/hand-right-outline.svg",
            ),
            AboutCard(
              title: "Restoration",
              text:
                  "Mydonate helps you share your story far and wide over various platforms to amass support for your cause. We as also have a team that look for great stories to amplify and share with the media and our community.",
              icon: "assets/images/refresh-outline.svg",
            ),
            AboutCard(
              title: "Trust & Safety",
              text:
                  "Mydonate helps you share your story far and wide over various platforms to amass support for your cause. We as also have a team that look for great stories to amplify and share with the media and our community.",
              icon: "assets/images/lock-closed-outline.svg",
            ),
          ],
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  const Heading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.red, fontSize: 15),
        ),
        Container(
          width: 50,
          height: 3,
          color: Colors.red,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
