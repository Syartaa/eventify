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

class SAppBarTheme {
  SAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.primaryColor, size: 24.0),
    actionsIconTheme: IconThemeData(color: AppColors.primaryColor, size: 24.0),
    titleTextStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor, // Updated to Primary Accent Color
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24.0),
    titleTextStyle: TextStyle(
      fontFamily: 'Poppins', // Use locally bundled Poppins font
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor, // Updated to Primary Accent Color
    ),
  );
}
