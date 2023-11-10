import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/components/mydrawer.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: MyDrawer(),
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.amber),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/beets_2.png',
              fit: BoxFit.contain,
              height: 50,
            ),
            SizedBox(
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
