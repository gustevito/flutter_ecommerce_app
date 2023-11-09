import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


ThemeData lightMode = ThemeData(
  fontFamily: GoogleFonts.josefinSans().fontFamily,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
);
