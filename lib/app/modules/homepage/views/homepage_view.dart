import 'package:ar_rahman/app/core/app_image/app_images.dart';
import 'package:ar_rahman/app/core/app_string/app_string.dart';
import 'package:ar_rahman/app/responsive/responsive_screen.dart';
import 'package:ar_rahman/app/utility/text_style/textstyle.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import '../../../coustom_widget/backround_screen/backround_screen.dart';
import '../../../coustom_widget/button/button.dart';
import '../../../coustom_widget/coustom_appbar/coustom_app_bar.dart';
import '../../../coustom_widget/coustom_appbar/navbar.dart';
import '../../../utility/app_colors/appcolors.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  final HomepageController _homepageController = Get.put(HomepageController());



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Responsive(
      mobile:  Obx(() {
        return BackroundScreen(
            BackroundColor:
            controller.isDarkMode.value ? Colors.black87 : Colors.white,
            body: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 15,
                      child: Obx(() {
                        return AdaptiveNavBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          screenWidth: width,
                          title: Text(
                            "Adaptive NavBar",
                            style: TextStyle(
                              color: controller.isDarkMode.value
                                  ? Colors.white
                                  : Colors.black87,
                            ),
                          ),
                          navBarItems: [
                            NavBarItem(
                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "Home",
                              onTap: () {
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                            NavBarItem(

                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,

                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "Skills",
                              onTap: () {
                                controller.isDarkMode();
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                            NavBarItem(
                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "My Works",
                              onTap: () {
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                            NavBarItem(
                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "About Us",
                              onTap: () {
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                            NavBarItem(
                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "Contact",
                              onTap: () {
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                          ],
                        );
                      }),
                    ),
                    Expanded(
                        flex: 1,
                        child: Obx(() {
                          return DayNightSwitcherIcon(
                              cloudsColor: Colors.white,
                              cratersColor: Colors.red,
                              isDarkModeEnabled: controller.isDarkMode.value,
                              onStateChanged: (val) {
                                controller.toggleDarkMode();
                              });
                        }))
                  ],
                ),

                MobileBodyOne()


              ],
            ));
      }),
      desktop:  Obx(() {
        return BackroundScreen(
            BackroundColor:
            controller.isDarkMode.value ? Colors.black87 : Colors.white,
            body: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 15,
                      child: Obx(() {
                        return AdaptiveNavBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          screenWidth: width,
                          title: Text(
                            "Adaptive NavBar",
                            style: TextStyle(
                              color: controller.isDarkMode.value
                                  ? Colors.white
                                  : Colors.black87,
                            ),
                          ),
                          navBarItems: [
                            NavBarItem(
                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "Home",
                              onTap: () {
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                            NavBarItem(

                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,

                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "Skills",
                              onTap: () {
                                controller.isDarkMode();
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                            NavBarItem(
                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "My Works",
                              onTap: () {
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                            NavBarItem(
                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "About Us",
                              onTap: () {
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                            NavBarItem(
                              hoverColor: controller.isDarkMode.value ? Colors
                                  .white54 : Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: controller.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500),
                              text: "Contact",
                              onTap: () {
                                Navigator.pushNamed(context, "routeName");
                              },
                            ),
                          ],
                        );
                      }),
                    ),
                    Expanded(
                        flex: 1,
                        child: Obx(() {
                          return DayNightSwitcherIcon(
                              cloudsColor: Colors.white,
                              cratersColor: Colors.red,
                              isDarkModeEnabled: controller.isDarkMode.value,
                              onStateChanged: (val) {
                                controller.toggleDarkMode();
                              });
                        }))
                  ],
                ),
                BodyOne(),



              ],
            ));
      }),

    );
  }
}


Widget MobileBodyOne(){
  return Container(
    height: 500.h,
    width: double.infinity,
    color: Colors.purple,
    child: Column(
      children: [
         Text('h;lfhsda sh f;asfh asdfh asofih dasf sdfaosifrueigf asp;f p;fdfusfpasghf sfgasdf fas fsdfghasogfs fasfsdfasdf')
         ,Text('h;lfhsda sh f;asfh asdfh asofih dasf sdfaosifrueigf asp;f p;fdfusfpasghf sfgasdf fas fsdfghasogfs fasfsdfasdf')
      ],
    ),
  );
}
Widget BodyOne(){
  return Container(
    height: 500.h,
    width: double.infinity,
    color: Colors.purple,
    child: Row(
      children: [
         Text('h;lfhsda sh f;asfh asdfh asofih dasf sdfaosifrueigf asp;f p;fdfusfpasghf sfgasdf fas fsdfghasogfs fasfsdfasdf')
         ,Text('h;lfhsda sh f;asfh asdfh asofih dasf sdfaosifrueigf asp;f p;fdfusfpasghf sfgasdf fas fsdfghasogfs fasfsdfasdf')
      ],
    ),
  );
}

