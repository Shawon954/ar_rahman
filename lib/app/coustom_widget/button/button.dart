import 'package:flutter/material.dart';

import '../../utility/app_colors/appcolors.dart';

class CoustomeButton extends StatelessWidget {

  final child;
  final onPressed;

   final height;
    final width;
    final fontSize;
   final textstyle;


  const CoustomeButton({super.key, this.child, this.onPressed, this.height, this.width, this.fontSize, this.textstyle,});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: height,
      width:width,
      child: ElevatedButton(
        child: child,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:AppColors.primary,
        ),
      )
    );
  }
}
