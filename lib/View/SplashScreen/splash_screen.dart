import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grants/Utiles/utilies.dart';
import 'package:grants/generated/assets.dart';

import '../Screen/card_swiper_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => CardSwiperScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                height: size.width > 600 ? size.height / 4 : size.height / 5,
                width: size.width > 600 ? size.width / 3 : size.width / 1.8,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: backgroundColor,
                  image: const DecorationImage(
                      image: AssetImage(Assets.assetsIconLogo), fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: size.height / 30,
              ),
              Text(
                "Grant writing in half the time",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:
                        size.width > 600 ? size.width / 14 : size.width / 15,
                    color: Colors.black),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width > 600.0 ? 24 : 20.0,
                      vertical: size.width > 600.0 ? 8 : 4),
                  child: Text(
                    "Draft Developer Dr. Barbara Wright",
                    style: TextStyle(
                        letterSpacing: 1.2,
                        wordSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width > 600 ? 15 : 10,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
