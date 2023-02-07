import 'package:flutter/material.dart';

import 'View/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "1 HOUR 2 GRANTS",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
