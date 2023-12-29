import 'package:flipkart_clone/shared/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  //Black bold large Text Eg: $2
  static TextStyle get titleLarge =>
      getTextStyle(42, LightColors.secondary, FontWeight.w700);
  //Black bold Text Eg: Login
  static TextStyle get titleMedium =>
      getTextStyle(22, LightColors.secondary, FontWeight.w700);
  //List tile title
  static TextStyle get titleSmall =>
      getTextStyle(16, LightColors.secondary, FontWeight.w600);
  static TextStyle get bodyLarge =>
      getTextStyle(18, LightColors.outlineVariant, FontWeight.w400);
  // White text on button Eg: Login
  static TextStyle get buttonWhite =>
      getTextStyle(16, LightColors.tertiary, FontWeight.w700);
  // Hint text on text field Eg: Email
  static TextStyle get hint =>
      getTextStyle(15, LightColors.grey, FontWeight.w400);

  static TextStyle get textfieldText => GoogleFonts.roboto(
        fontSize: 15,
        color: LightColors.secondary,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      );
  //Small grey text Eg: Don't have an account? Sign up
  static TextStyle get bodySmall =>
      getTextStyle(12, LightColors.grey, FontWeight.w500);
  static TextStyle get tabBarWhite =>
      getTextStyle(14, LightColors.tertiary, FontWeight.w700);
  static TextStyle get tabBarBlack =>
      getTextStyle(14, LightColors.tertiary, FontWeight.w700);
  static TextStyle get greyText =>
      getTextStyle(15, LightColors.grey, FontWeight.w400);
  static TextStyle getTextStyle(
    double fontSize,
    Color color,
    FontWeight fontWeight,
  ) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
