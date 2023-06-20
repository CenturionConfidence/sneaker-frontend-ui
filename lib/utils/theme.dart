import 'package:ecommerce_design/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme lightAppTheme = TextTheme(
    displaySmall: GoogleFonts.kumbhSans(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: primaryColor,
    ),
    displayLarge: GoogleFonts.kumbhSans(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displayMedium:
        GoogleFonts.kumbhSans(fontSize: 25, fontWeight: FontWeight.bold),
    bodySmall: GoogleFonts.kumbhSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: primaryColor,
    ),
    // bodyMedium:
    //     GoogleFonts.kumbhSans(fontSize: 20, fontWeight: FontWeight.normal),
    // bodyLarge:
    //     GoogleFonts.kumbhSans(fontSize: 25, fontWeight: FontWeight.normal),
  );

  static AppBarTheme appBarTheme = AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      titleTextStyle: lightAppTheme.displayLarge);

  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        textSelectionTheme:
            const TextSelectionThemeData(selectionColor: Colors.green),
        textTheme: lightAppTheme,
        appBarTheme: appBarTheme);
  }
}
