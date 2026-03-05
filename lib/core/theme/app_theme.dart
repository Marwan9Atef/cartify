import 'package:cartify/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.backgroundColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColor.backgroundColor,
      surfaceTintColor: AppColor.transparent,
      titleTextStyle: GoogleFonts.inter(
        color: AppColor.labelText,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: const IconThemeData(color: AppColor.labelText),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColor.primaryBlue,
      secondary: AppColor.primaryPurple,
      surface: AppColor.backgroundColor,
      error: AppColor.red,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.inputFill,
      contentPadding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
      hintStyle: GoogleFonts.inter(
        color: AppColor.hintText,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: GoogleFonts.inter(
        color: AppColor.labelText,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      floatingLabelStyle: GoogleFonts.inter(
        color: AppColor.primaryBlue,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      prefixIconColor: AppColor.bodyText,
      suffixIconColor: AppColor.bodyText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColor.inputBorder, width: 1.6),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColor.inputBorder, width: 1.6),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColor.primaryBlue, width: 1.6),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColor.red, width: 1.6),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColor.red, width: 1.6),
      ),
      errorStyle: GoogleFonts.inter(
        color: AppColor.red,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
    textTheme: GoogleFonts.interTextTheme(),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColor.primaryBlue;
        }
        return AppColor.inputFill;
      }),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      side: const BorderSide(color: AppColor.inputBorder, width: 1.6),
    ),
  );
}
