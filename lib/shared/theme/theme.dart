
import 'package:flipkart_clone/shared/theme/colors.dart';
import 'package:flipkart_clone/shared/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData themeData = ThemeData(
    primarySwatch: const MaterialColor(
      0XFF182936,
      <int, Color>{
        50: Color(0XFF182936),
        100: Color(0XFF182936),
        200: Color(0XFF182936),
        300: Color(0XFF182936),
        400: Color(0XFF182936),
        500: Color(0XFF182936),
        600: Color(0XFF182936),
        700: Color(0XFF182936),
        800: Color(0XFF182936),
        900: Color(0XFF182936),
      },
    ),
    textTheme: TextTheme(
      labelSmall: TextStyles.textfieldText,
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
    primaryColor: const Color(0XFF182936),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.hint,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 13,
      ),
      suffixIconColor: LightColors.outlineVariant,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: LightColors.outline),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: LightColors.outline),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: LightColors.primary),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: LightColors.error),
      ),
      fillColor: LightColors.fill,
    ),
  );
}
