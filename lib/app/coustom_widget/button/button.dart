import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoustomeButton extends StatelessWidget {

  final child;
  final onPressed;


  const CoustomeButton({super.key, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width:40.w,
      child: ElevatedButton(
        child: child,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: Colors.purple.shade400,
            textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}
