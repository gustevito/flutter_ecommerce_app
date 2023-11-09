import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkMode = ThemeData(
  fontFamily: GoogleFonts.josefinSans().fontFamily,
  colorScheme: ColorScheme.dark(
    background: const Color.fromARGB(255, 20, 20, 20),
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade600,
    inversePrimary: Colors.white,
  ),
);
