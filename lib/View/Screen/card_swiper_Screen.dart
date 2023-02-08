import 'package:flutter/material.dart';
import 'package:grants/generated/assets.dart';

import '../../Utiles/utilies.dart';
import 'main_screen.dart';

class CardSwiperScreen extends StatefulWidget {
  CardSwiperScreen({Key? key}) : super(key: key);

  @override
  State<CardSwiperScreen> createState() => _CardSwiperScreenState();
}

class _CardSwiperScreenState extends State<CardSwiperScreen> {
  @override
  List<String> imaglist = [
    Assets.cardSwiperAssetImg1,
    Assets.cardSwiperAssetImg2,
    Assets.cardSwiperAssetImg3,
  ];

  List<String> text = [
    "First Time Dr. Barbara Babbi Wright introduce mobile application to helps people to write grants in half the time.",
    "A beautiful customized template preview in PDF form upon completion.",
    "Instantly save or print as well as share your customized template in PDF form upon completion."
  ];

  int indexnum = 0;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: size.height / 4.7,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff2A3990),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "1 Hour 2 Grants",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.2,
                        wordSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width > 600
                            ? size.width / 25
                            : size.width / 15),
                  ),
                  SizedBox(
                    height: size.height / 80,
                  ),
                  Text(
                    "(CDB Do It Yourself Grant Template Builder)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width > 600 ? 15 : size.width / 22,
                      // fontWeight: FontWeight.bold,
                      // fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: size.height / 3.1,
              width: size.width,
              margin: EdgeInsets.symmetric(
                  vertical: size.height / 18, horizontal: size.width / 9),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imaglist[indexnum]),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.black45,

                    listtilecolor.withOpacity(0.6),
                    // Colors.deepPurple,
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height / 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: size.width / 15,
                        right: size.width / 30,
                      ),
                      child: Text(
                        textAlign: TextAlign.start,
                        text[indexnum],
                        style: const TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: indexnum == 0 ? 13 : size.height / 28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: size.height / 49,
                          width: size.width / 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: indexnum == 0
                                ? listtilecolor
                                : Colors.grey.shade800,
                          ),
                        ),
                        SizedBox(
                          width: size.width / 15,
                        ),
                        Container(
                          height: size.height / 49,
                          width: size.width / 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: indexnum == 1
                                ? listtilecolor
                                : Colors.grey.shade700,
                          ),
                        ),
                        SizedBox(
                          width: size.width / 15,
                        ),
                        Container(
                          height: size.height / 49,
                          width: size.width / 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: indexnum == 2
                                ? listtilecolor
                                : Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: indexnum == 0 ? 13 : size.height / 28,
                    ),
                    Container(
                      height: size.height / 12,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ElevatedButton(
                        onPressed: indexnum == 2
                            ? () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ),
                                    (route) => false);
                              }
                            : () {
                                setState(() {
                                  indexnum++;
                                });
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: listtilecolor,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Text(
                          indexnum == 2 ? "Go to main screen" : "Go to next",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
