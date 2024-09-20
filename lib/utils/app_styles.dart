import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/size_config.dart';

// import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular22(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular18(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleLight10(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold26(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF7E4DFF),
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold40(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 40),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium14(BuildContext context, double? fonteSize) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: fonteSize ?? 14),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold40(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 40),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold47(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 47),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Readex Pro',
      fontWeight: FontWeight.w600,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .72;
  double upperLimit = fontSize * 1.1;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
//   // var dispatcher = PlatformDispatcher.instance;
//   // var physicalWidth = dispatcher.views.first.physicalSize.width;
//   // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletPoint) {
    return width / 800;
  } else if (width < SizeConfig.desktopPoint) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
