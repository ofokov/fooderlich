import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  // 1
  static TextTheme lightTextTheme = TextTheme(
      bodyLarge: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black),
      headlineLarge: GoogleFonts.openSans(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
      headlineMedium: GoogleFonts.openSans(
          fontSize: 21, fontWeight: FontWeight.w700, color: Colors.black),
      headlineSmall: GoogleFonts.openSans(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black));
  //2
  static TextTheme darkTextTheme = TextTheme(
      bodyLarge: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
      headlineLarge: GoogleFonts.openSans(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: GoogleFonts.openSans(
          fontSize: 21, fontWeight: FontWeight.w700, color: Colors.white),
      headlineSmall: GoogleFonts.openSans(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white));
  // 3
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      secondaryHeaderColor: Colors.black,
      textTheme: lightTextTheme,
      textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.green),
    );
  }

// 4
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.grey[900],
      secondaryHeaderColor: Colors.green[600],
      textTheme: darkTextTheme,
      textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.green),
    );
  }
}
