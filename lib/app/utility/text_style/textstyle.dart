import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors/appcolors.dart';

class googlefonts {
  double width = Get.width;

  TextStyle textRegular18_B_Style(
      {color = AppColors.whiteColor,
      double fontSize = 18,
        fontWeight= FontWeight,
        fontStyle = FontStyle,

      }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
        fontFamily:  "Poppins",
      fontStyle: fontStyle,
    );
  }

  TextStyle textRegular16_W6_Style(
      {color = AppColors.whiteColor,
      double fontSize = 16,
        fontWeight= FontWeight,
        fontStyle = FontStyle,



      }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
        fontFamily:  "Poppins",
        fontStyle: fontStyle
    );
  }
  TextStyle textRegular14_W5Style(
      {color = AppColors.whiteColor,
      double fontSize = 14,
        fontWeight= FontWeight,
        fontStyle = FontStyle,



      }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
        fontFamily:  "Poppins",
        fontStyle: fontStyle
    );
  }
  TextStyle textRegular12_W4Style(
      {color = AppColors.whiteColor,
      double fontSize = 12,
        fontWeight= FontWeight,
        fontStyle = FontStyle,



      }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
        fontFamily:  "Poppins",
        fontStyle: fontStyle
    );
  }



}
