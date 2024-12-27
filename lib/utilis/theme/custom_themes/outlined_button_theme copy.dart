import 'package:flutter/material.dart';

class SOutlinedButtonTheme {
  SOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Color(0xFFDA90A4)), // Vibrant Pinkish Red
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: TextStyle(
        fontFamily: 'Poppins', // Use locally bundled Poppins font
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Color(0xFFDA90A4)), // Vibrant Pinkish Red
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: TextStyle(
        fontFamily: 'Poppins', // Use locally bundled Poppins font
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
