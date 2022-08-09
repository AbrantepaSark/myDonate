import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutCard extends StatelessWidget {
  final String title, text, icon;
  const AboutCard({
    Key? key,
    required this.title,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        height: 350,
        width: double.infinity,
        //color: Colors.amber,
        //alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            Positioned(
              top: size.width * .12,
              left: size.width * 0.1,
              right: size.width * 0.1,
              child: Container(
                height: 280,
                //alignment: Alignment.bottomCenter,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                width: size.width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        spreadRadius: 2,
                        offset: const Offset(1, 2),
                        blurRadius: 2,
                      ),
                    ]),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      text,
                      style: TextStyle(color: Colors.grey[700]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: size.width * 0.36,
              child: Container(
                height: 70,
                width: 70,
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                  color: Color(0xff86EFAC),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  icon,
                  height: 10,
                  width: 10,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
