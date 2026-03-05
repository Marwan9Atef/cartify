import 'dart:ui';

import 'package:cartify/core/theme/app_resources.dart';
import 'package:cartify/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

abstract class AppStyles {
  static TextStyle _inter({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    double? height,
  }) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(fontSize: fontSize),
      fontWeight: fontWeight,
      color: color,
      height: height,
    );
  }

  // Regular
  static TextStyle styleRegular12({Color? color}) => _inter(
    fontSize: 12,
    fontWeight: FontWeightManager.regular,
    color: color ?? AppColor.labelText,
    height: 16 / 12,
  );

  static TextStyle styleRegular14({Color? color}) => _inter(
    fontSize: 14,
    fontWeight: FontWeightManager.regular,
    color: color ?? AppColor.labelText,
    height: 20 / 14,
  );

  static TextStyle styleRegular16({Color? color}) => _inter(
    fontSize: 16,
    fontWeight: FontWeightManager.regular,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleRegular18({Color? color}) => _inter(
    fontSize: 18,
    fontWeight: FontWeightManager.regular,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleRegular20({Color? color}) => _inter(
    fontSize: 20,
    fontWeight: FontWeightManager.regular,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleRegular24({Color? color}) => _inter(
    fontSize: 24,
    fontWeight: FontWeightManager.regular,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleRegular30({Color? color}) => _inter(
    fontSize: 30,
    fontWeight: FontWeightManager.regular,
    color: color ?? AppColor.labelText,
  );

  // Medium
  static TextStyle styleMedium12({Color? color}) => _inter(
    fontSize: 12,
    fontWeight: FontWeightManager.medium,
    color: color ?? AppColor.labelText,
    height: 16 / 12,
  );

  static TextStyle styleMedium14({Color? color}) => _inter(
    fontSize: 14,
    fontWeight: FontWeightManager.medium,
    color: color ?? AppColor.labelText,
    height: 20 / 14,
  );

  static TextStyle styleMedium16({Color? color}) => _inter(
    fontSize: 16,
    fontWeight: FontWeightManager.medium,
    color: color ?? AppColor.labelText,
    height: 24 / 16,
  );

  static TextStyle styleMedium18({Color? color}) => _inter(
    fontSize: 18,
    fontWeight: FontWeightManager.medium,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleMedium20({Color? color}) => _inter(
    fontSize: 20,
    fontWeight: FontWeightManager.medium,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleMedium24({Color? color}) => _inter(
    fontSize: 24,
    fontWeight: FontWeightManager.medium,
    color: color ?? AppColor.labelText,
  );

  // SemiBold
  static TextStyle styleSemiBold12({Color? color}) => _inter(
    fontSize: 12,
    fontWeight: FontWeightManager.semiBold,
    color: color ?? AppColor.labelText,
    height: 16 / 12,
  );

  static TextStyle styleSemiBold14({Color? color}) => _inter(
    fontSize: 14,
    fontWeight: FontWeightManager.semiBold,
    color: color ?? AppColor.labelText,
    height: 20 / 14,
  );

  static TextStyle styleSemiBold16({Color? color}) => _inter(
    fontSize: 16,
    fontWeight: FontWeightManager.semiBold,
    color: color ?? AppColor.labelText,
    height: 24 / 16,
  );

  static TextStyle styleSemiBold18({Color? color}) => _inter(
    fontSize: 18,
    fontWeight: FontWeightManager.semiBold,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleSemiBold20({Color? color}) => _inter(
    fontSize: 20,
    fontWeight: FontWeightManager.semiBold,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleSemiBold24({Color? color}) => _inter(
    fontSize: 24,
    fontWeight: FontWeightManager.semiBold,
    color: color ?? AppColor.labelText,
  );

  // Bold
  static TextStyle styleBold14({Color? color}) => _inter(
    fontSize: 14,
    fontWeight: FontWeightManager.bold,
    color: color ?? AppColor.labelText,
    height: 20 / 14,
  );

  static TextStyle styleBold16({Color? color}) => _inter(
    fontSize: 16,
    fontWeight: FontWeightManager.bold,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleBold18({Color? color}) => _inter(
    fontSize: 18,
    fontWeight: FontWeightManager.bold,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleBold20({Color? color}) => _inter(
    fontSize: 20,
    fontWeight: FontWeightManager.bold,
    color: color ?? AppColor.labelText,
  );

  static TextStyle styleBold24({Color? color}) => _inter(
    fontSize: 24,
    fontWeight: FontWeightManager.bold,
    color: color ?? AppColor.white,
    height: 32 / 24,
  );

  static TextStyle styleBold30({Color? color}) => _inter(
    fontSize: 30,
    fontWeight: FontWeightManager.bold,
    color: color ?? AppColor.labelText,
  );
}

double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
