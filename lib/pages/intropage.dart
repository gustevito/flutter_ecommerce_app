import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_ecommerce_app/components/mybutton.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Image.asset(
              'assets/BEETS.png',
              height: 100,
            ),

            const SizedBox(
              height: 25,
            ),
            // title
            Text(
              'Beets Store',
              style: GoogleFonts.josefinSans(
                fontWeight: FontWeight.w800,
                fontSize: 42,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            //subtitle

            Text(
              'Fashion that stings.',
              style: GoogleFonts.josefinSans(
                fontWeight: FontWeight.w200,
                fontSize: 25,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 20),
            //button
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/home'),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
