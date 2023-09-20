import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors/appcolors.dart';

class googlefonts {
  double width = Get.width;

  TextStyle textRegularStyle(
      {color = AppColors.whiteColor,
      double fontSize = 14,
      fontWeight = FontWeight.normal,
        fontFamily= "Poppins"
      }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }


  TextStyle textStyle20black = TextStyle(
      fontSize: 10.sp,
      color: Color(0xd2111010),
      fontWeight: FontWeight.bold,
      fontFamily: "Poppins",
      fontStyle: FontStyle.normal);

  TextStyle textStyle16blacknavbar = GoogleFonts.inter(
      fontSize: 4.sp,
      color: Color(0xd2111010),
      fontWeight: FontWeight.w500,
      letterSpacing: 1.1);
  TextStyle textStyle16black = GoogleFonts.inter(
      fontSize: 5.sp,
      color: Color(0xd2111010),
      fontWeight: FontWeight.w700,
      letterSpacing: 1.1);
  TextStyle textStyle16blacknormal = GoogleFonts.inter(
      fontSize: 5.sp,
      color: Color(0xd2111010),
      fontWeight: FontWeight.normal,
      letterSpacing: 1.0);
  TextStyle textStyle14black = GoogleFonts.inter(
      fontSize: 5.sp,
      color: Color(0xd2111010),
      fontWeight: FontWeight.w400,
      letterSpacing: 1.1,
      fontStyle: FontStyle.italic);
}
