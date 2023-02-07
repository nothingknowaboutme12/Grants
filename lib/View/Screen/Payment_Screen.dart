import 'package:flutter/material.dart';
import 'package:grants/Utiles/utilies.dart';
import 'package:grants/View/Screen/card_swiper_Screen.dart';
import 'package:grants/generated/assets.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: size.height / 4,
                width: double.infinity,
                decoration: BoxDecoration(
                  // color:0xff2A3990).withOpacity(0.9), const Color(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage(Assets.assetsLogo), fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: size.width > 600 ? 10 : 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.black45,

                        listtilecolor.withOpacity(0.9),
                        // Colors.deepPurple,
                      ],
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: size.height / 60,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            "Get your personal grant",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: size.width > 600
                                  ? size.width / 20
                                  : size.width / 11.5,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            "builder plan",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: size.width > 600
                                  ? size.width / 20
                                  : size.width / 11.5,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 40,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Opportunity knocks with the 1 Hour 2 Grants App that has helped raise \$1,000,000’s for nonprofit and social enterprises. The exclusive DIY strategic planning intake form will help you answer the most common grants and proposal questions. Then instantly integrates your answers into a personalized PDF template draft, ready for printing, to save you money and time on your fund development projects.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: size.width > 600 ? 20 : 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CardSwiperScreen(),
                                ),
                                (route) => false);
                          },
                          child: Container(
                              height: size.height / 10,
                              width: size.width / 1.10,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Text(
                                          "Monthly",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "\$39.99",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: size.height / 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            CardSwiperScreen();
                          },
                          child: Container(
                              height: size.height / 10,
                              width: size.width / 1.10,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Text(
                                          "Yearly",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "\$339.99(-save upto 20%) ",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: size.height / 30,
                        ),
                      ],
                    ),
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
