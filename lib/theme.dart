import 'package:flutter/material.dart';
import 'package:flutter_kurly/constants.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: kPrimaryColor,
      elevation: 0.0,
      foregroundColor: Colors.white,
    ),
    primaryColor: kPrimaryColor,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: kPrimaryColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    displayLarge:
        GoogleFonts.nanumGothic(fontSize: 18, fontWeight: FontWeight.bold),
    displayMedium:
        GoogleFonts.nanumGothic(fontSize: 16, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.nanumGothic(fontSize: 16),
    bodyLarge: GoogleFonts.nanumGothic(fontSize: 16),
    bodyMedium: GoogleFonts.nanumGothic(fontSize: 16),
  );
}
