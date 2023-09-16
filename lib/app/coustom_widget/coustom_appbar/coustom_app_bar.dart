import 'package:ar_rahman/app/core/app_image/app_images.dart';
import 'package:ar_rahman/app/utility/text_style/textstyle.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  late bool isDarkModeEnabled = false;
  late bool hovor = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: MediaQuery.of(context).size.width,
      color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Md.Abdur Rahman'),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              child: Row(
                children: [
                  InkWell(
                    onHover: (isHovering) {

                      if (isHovering) {
                        setState(() {
                          hovor = !isHovering;

                        });
                      }
                    },
                    child: Text(
                      'Home',
                      style: googlefonts().textStyle16blacknavbar,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  InkWell(
                    child: Text(
                      'About',
                      style: googlefonts().textStyle16blacknavbar,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  InkWell(
                    child: Text(
                      'Skills',
                      style: googlefonts().textStyle16blacknavbar,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  InkWell(
                    child: Text(
                      'My Work',
                      style: googlefonts().textStyle16blacknavbar,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  InkWell(
                    child: Text(
                      'Contact',
                      style: googlefonts().textStyle16blacknavbar,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  SizedBox(
                    height: 45.h,
                    width: 12.w,
                    child: DayNightSwitcher(
                      isDarkModeEnabled: isDarkModeEnabled,
                      onStateChanged: (isDarkModeEnabled) {
                        setState(() {
                          this.isDarkModeEnabled = isDarkModeEnabled;
                        });
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
