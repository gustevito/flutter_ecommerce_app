import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/pages/cartpage.dart';
import 'package:minimal_ecommerce_app/pages/home.dart';
import 'package:minimal_ecommerce_app/themes/darkmode.dart';
import 'package:minimal_ecommerce_app/themes/lightmode.dart';

import 'pages/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: darkMode,
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/home': (context) => const MyHome(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
