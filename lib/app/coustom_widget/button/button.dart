import 'package:ar_rahman/app/responsive/responsive_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoustomeButton extends StatelessWidget {

  final child;
  final onPressed;



  const CoustomeButton({super.key, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: Responsive.isMobile(context)?width/15:width/15,
      width:Responsive.isMobile(context)?width/5.5:width/5.5,
      child: ElevatedButton(
        child: child,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            textStyle: TextStyle(
                fontSize: Responsive.isMobile(context)?width/45:width/40,
                fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}
