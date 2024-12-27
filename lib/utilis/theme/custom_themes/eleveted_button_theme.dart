import 'package:eventify_app/utilis/theme/custom_themes/appbar_theme.dart';
import 'package:flutter/material.dart';

class SElevetedButtonTheme {
  SElevetedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primaryColor,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: BorderSide(color: AppColors.primaryColor),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        color: AppColors.textColor,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
