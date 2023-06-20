import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeLight() {
  return ThemeData(
    // textTheme: GoogleFonts.poppinsTextTheme(),

    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 19, fontWeight: FontWeight.w400),
    ),
    primaryColor: Colors.black,
    colorScheme: const ColorScheme(
      primary: Colors.black,
      onPrimary: Colors.black,
      //primaryVariant: Colors.orange,
      background: Colors.white,
      onBackground: Colors.black,
      secondary: Colors.black,
      onSecondary: Colors.white,
      // secondaryVariant: Colors.deepOrange,
      error: Colors.red,
      onError: Colors.white,
      surface: Color.fromRGBO(48, 103, 244, 1),
      onSurface: Color.fromRGBO(222, 229, 247, 1),
      brightness: Brightness.light,
    ),
    // accentColor: const Colors.black,
    disabledColor: const Color.fromRGBO(196, 196, 196, 1),
    backgroundColor: Colors.white,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.black,
      selectionColor: Color.fromRGBO(48, 103, 244, 1),
      selectionHandleColor: Color.fromRGBO(48, 103, 244, 1),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        elevation: 0,
        shadowColor: Colors.white.withOpacity(0),
      ),
    ),
  );
}
