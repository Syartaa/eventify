import 'package:eventify_app/utilis/theme/custom_themes/appbar_theme.dart';
import 'package:eventify_app/utilis/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:eventify_app/utilis/theme/custom_themes/checkbox_theme.dart';
import 'package:eventify_app/utilis/theme/custom_themes/eleveted_button_theme.dart';
import 'package:eventify_app/utilis/theme/custom_themes/outlined_button_theme%20copy.dart';
import 'package:eventify_app/utilis/theme/custom_themes/text_field_theme.dart';
import 'package:eventify_app/utilis/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //constructer private
  AppTheme._();

  static ThemeData lighTheme = ThemeData(
      useMaterial3: true,
      textTheme: TtextTheme.lightTextTheme,
      brightness: Brightness.light,
      primaryColor: Color(0xFF4A90E2),
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: SElevetedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: SAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: SBottomSheetTheme.lightBottomSheetThemeData,
      checkboxTheme: SCheckboxTheme.lightCheckboxTheme,
      outlinedButtonTheme: SOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: STextFormFieldTheme.lightInputDecorationTheme);
}
