// ignore_for_file: file_names
import "package:flutter/material.dart";
import 'dart:async';

import './Nav_Screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/splashScreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 10),
      () => Navigator.pushReplacementNamed(context, NavScreen.routeName),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover),
          ),
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(244, 143, 12, 75),
            ),
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage("assets/images/logo.png"),
                width: width * 0.4,
              ),
              Text(
                'MyDonate',
                style: TextStyle(
                    fontSize: width * 0.08,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                  height: height * .08,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                    indent: width * 0.4,
                    endIndent: width * 0.4,
                  )),
              SizedBox(
                width: width * 0.7,
                child: Text(
                  "Donate in crypto, let's build a better world",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Bellota",
                      fontSize: width * 0.05,
                      color: Colors.white),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
