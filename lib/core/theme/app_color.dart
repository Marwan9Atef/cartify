import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryBlue = Color(0xFF2B7FFF);
  static const Color primaryPurple = Color(0xFF4F39F6);
  static const Color accentBlue = Color(0xFF155DFC);

  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);

  static const Color inputFill = Color(0xFFF9FAFB);
  static const Color inputBorder = Color(0xFFE5E7EB);

  static const Color labelText = Color(0xFF364153);
  static const Color hintText = Color(0x800A0A0A);
  static const Color bodyText = Color(0xFF4A5565);
  static const Color headerSubtitle = Color(0xFFDBEAFE);

  static const Color infoBoxBg = Color(0xFFEFF6FF);
  static const Color infoBoxBorder = Color(0xFFBEDBFF);
  static const Color infoBoxTitle = Color(0xFF1C398E);
  static const Color infoBoxBody = Color(0xFF1447E6);

  static const Color requirementsHeading = Color(0xFF1E2939);
  static const Color requirementsBullet = Color(0xFF99A1AF);

  static const Color iconCircleBg = Color(0x33FFFFFF);
  static const Color backButtonText = Color(0xE6FFFFFF);

  static const Color red = Color(0xFFFF0000);
  static const Color green = Color(0xFF008060);
  static const Color transparent = Color(0x00000000);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment(-0.8, -0.6),
    end: Alignment(0.8, 0.6),
    colors: [primaryBlue, primaryPurple],
  );

  static List<BoxShadow> primaryButtonShadow = [
    BoxShadow(
      color: const Color(0x802B7FFF),
      blurRadius: 15,
      offset: const Offset(0, 10),
    ),
    BoxShadow(
      color: const Color(0x802B7FFF),
      blurRadius: 6,
      offset: const Offset(0, 4),
    ),
  ];
}
