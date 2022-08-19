import 'package:flutter/material.dart';

import '../../../Widgets/textContainer.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var textStyle =
        TextStyle(fontSize: width * .035, fontWeight: FontWeight.bold);

    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Terms and Conditions",
          style: TextStyle(fontSize: width * .05, fontWeight: FontWeight.bold),
        ),
        Text(
          "Last updated: July 14, 2022",
          style: textStyle,
        ),
        const Text(
          "Please read these terms and conditions carefully before using Our Service.",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 8),
        Text(
          "Interpretation and Definitions",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * .043),
        ),
        Text("Interpretation", style: textStyle),
        const Text(
          "The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 8),
        Text(
          'Definitions',
          style: textStyle,
        ),
        const Text("For the purposes of this Privacy Policy:"),
        const TextContainer(
          header: "Affiliate ",
          text:
              "means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.",
        ),
        const TextContainer(
          header: "Company ",
          text:
              "(referred to as either 'the Company', 'We', 'Us' or 'Our' in this Agreement) refers to Sympodium.",
        ),
        const TextContainer(
          header: "Country ",
          text: "refers to: Ghana",
        ),
        const TextContainer(
          header: "Device ",
          text:
              "means any device that can access the Service such as a computer, a cellphone or a digital tablet.",
        ),
        const TextContainer(
          header: "Service ",
          text: "refers to the Website.",
        ),
        const TextContainer(
          header: "Terms and Conditions",
          text:
              " (also referred as \"Terms\") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service.",
        ),
        const TextContainer(
          header: "Third-party Social Media Service ",
          text:
              "means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.",
        ),
        const TextContainer(
          header: "Website ",
          text:
              "refers to MyDonate, accessible from https://mydonate2.vercel.app/",
        ),
        const TextContainer(
          header: "You ",
          text:
              "means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.",
        ),
      ],
    ));
  }
}
