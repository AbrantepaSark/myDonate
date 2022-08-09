// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widgets/about_card.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/about";
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'About MyDonate',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "The world can only become a better if we all dream of making the world a better place to live in. That desire to offer alms to people, fix communities, or better still contribute to the development of a nation. At Mydonate, we encourage all individuals and organisations help in this regard with any of the widely used and approved cryptocurrency because that is the only way we can make the world a better place.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.5,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "What we intend to do is to create and contribute to the giving layer of the internet with blockchain technology: a community where all individuals, organisations, and nonprofits can champion causes that are of societal concern and raise funds to make a change. With Mydonate, all individuals and organisations have to their disposer tools they need to raise funds and share their cause far and wide and make use of the power of generosity through our usage of blockchain technology.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.5,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 25),
            const AboutCard(
              title: "Reach",
              text:
                  "Mydonate helps you share your story far and wide over various platforms to amass support for your cause. We as also have a team that look for great stories to amplify and share with the media and our community.",
              icon: "assets/images/hand-right-outline.svg",
            ),
            const AboutCard(
              title: "Restoration",
              text:
                  "Mydonate helps you share your story far and wide over various platforms to amass support for your cause. We as also have a team that look for great stories to amplify and share with the media and our community.",
              icon: "assets/images/refresh-outline.svg",
            ),
            const AboutCard(
              title: "Trust & Safety",
              text:
                  "Mydonate helps you share your story far and wide over various platforms to amass support for your cause. We as also have a team that look for great stories to amplify and share with the media and our community.",
              icon: "assets/images/lock-closed-outline.svg",
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size * .02),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: const [
                  Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Contact(
                    icon: "assets/images/call-outline.svg",
                    text: "+233 509287309",
                  ),
                  Contact(
                    icon: "assets/images/mail-outline.svg",
                    text: "mydonate@gmail.com",
                  ),
                  Contact(
                    icon: "assets/images/location-outline.svg",
                    text: "Bungalow 27, ",
                    text2: 'Nkwabeng Police Clinic',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final String text, icon;
  final String text2;
  const Contact({
    Key? key,
    required this.icon,
    required this.text,
    this.text2 = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 25,
            width: 25,
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 15),
              ),
              Text(
                text2,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          )
        ],
      ),
    );
  }
}
