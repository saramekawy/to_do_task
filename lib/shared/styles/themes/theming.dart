import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static const Color primaryColor = Color(0xFF363636);
  static const Color blackColor = Color(0xFFFFFFFF);

  static ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFDFECDB),
    primaryColor: primaryColor,
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        // text color
        onPrimary: Colors.red,
        // color of smallest text (time)
        secondary: Color(0xFF5D9CEC),
        // container , text color , background for the buttons
        onSecondary: Color(0xFF61E757),
        // done task
        error: Color(0xFFEC4B4B),
        onError: blackColor,
        background: Color(0xFFDFECDB),
        onBackground: Color(0xFFA9A9A9),
        // place holders color
        surface: Color(0xFFC8C9CB),
        // icons border
        onSurface: Colors.indigo // backup color
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF5D9CEC),
      centerTitle: false,
      titleTextStyle: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
          fontWeight: FontWeight.bold, fontSize: 14, color: primaryColor),
      bodyMedium: GoogleFonts.arima(
        // language and mode options
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: primaryColor,
      ),
      bodySmall: GoogleFonts.roboto(
        // small text
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: primaryColor,
      ),
    ),
  );
  static ThemeData darkMode = ThemeData(
      scaffoldBackgroundColor: const Color(0xFF060E1E),
      primaryColor: blackColor,
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: blackColor,
          // text color
          onPrimary: blackColor,
          // color of smallest text (time)
          secondary: Color(0xFF5D9CEC),
          // container , text color , background for the buttons
          onSecondary: Color(0xFF61E757),
          // done task
          error: Color(0xFFEC4B4B),
          onError: blackColor,
          background: Color(0xFF060E1E),
          onBackground: Color(0xFFCDCACA),
          // place holders color
          surface: Color(0xFFC8C9CB),
          // icons border
          onSurface: Colors.indigo // backup color
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        titleTextStyle: GoogleFonts.poppins(
          color: primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.poppins(
            fontWeight: FontWeight.bold, fontSize: 18, color: blackColor),
        bodyMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: blackColor,
        ),
        bodySmall: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 10,
          color: Color(0xFF303030),
        ),
      ));
}
