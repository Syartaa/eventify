import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const primaryColor = Color(0xFF4A90E2); // Primary Accent Color
  static const secondaryColor = Color(0xFFFF6F00); // Secondary Accent Color
  static const textColor = Color(0xFF333333); // Text & Primary Background
  static const successColor = Color(0xFF6BD19D); // Success Color
  static const errorColor = Color(0xFFFF4C4C); // Error/Warning Color
  static const highlightColor = Color(0xFFF4D03F); // Highlight Color
}

class STextFormFieldTheme {
  STextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.primaryColor,
    suffixIconColor: AppColors.primaryColor,
    labelStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      fontSize: 14,
      color: const Color.fromARGB(183, 133, 133, 133),
    ),
    hintStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      fontSize: 14,
      color: const Color.fromARGB(183, 133, 133, 133),
    ),
    errorStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      color: AppColors.textColor.withOpacity(0.8),
    ),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: AppColors.primaryColor),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: AppColors.primaryColor),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: AppColors.errorColor),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 2, color: AppColors.highlightColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      fontSize: 14,
      color: Colors.white,
    ),
    hintStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      fontSize: 14,
      color: Colors.white,
    ),
    errorStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      color: Colors.white.withOpacity(0.8),
    ),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.white),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: AppColors.errorColor),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 2, color: AppColors.highlightColor),
    ),
  );
}
