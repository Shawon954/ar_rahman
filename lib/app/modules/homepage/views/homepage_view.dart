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

  final isselected = Color(0xfffffff);
  final unselected = Color(0xaffffff);


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    final width = MediaQuery
        .of(context)
        .size
        .width;

    return Obx(() {
      return BackroundScreen(
          BackroundColor: controller.isDarkMode.value ? Colors.black87 : Colors
              .white,
          body:
          Column(
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

                        title: Text("Adaptive NavBar",
                          style: TextStyle(color: controller.isDarkMode.value ? Colors
                              .white : Colors.black87,),),
                        navBarItems: [
                          NavBarItem(

                            borderRadius: BorderRadius.all(Radius.circular(10)),

                            textStyle: TextStyle(fontSize: 14,
                                color: controller.isDarkMode.value ? Colors
                                    .white : Colors.black87,
                                fontWeight: FontWeight.w500),
                            text: "Home",
                            onTap: () {
                              Navigator.pushNamed(context, "routeName");
                            },
                          ),
                          NavBarItem(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                            textStyle: TextStyle(fontSize: 14,
                                color: controller.isDarkMode.value ? Colors
                                    .white : Colors.black87,
                                fontWeight: FontWeight.w500),
                            text: "Skills",
                            onTap: () {
                              Navigator.pushNamed(context, "routeName");
                            },
                          ),
                          NavBarItem(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                            textStyle: TextStyle(fontSize: 14,
                                color:controller.isDarkMode.value ? Colors
                                    .white : Colors.black87,
                                fontWeight: FontWeight.w500),
                            text: "My Works",
                            onTap: () {
                              Navigator.pushNamed(context, "routeName");
                            },
                          ),
                          NavBarItem(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                            textStyle: TextStyle(fontSize: 14,
                                color:controller.isDarkMode.value ? Colors
                                    .white : Colors.black87,
                                fontWeight: FontWeight.w500),
                            text: "About Us",
                            onTap: () {
                              Navigator.pushNamed(context, "routeName");
                            },
                          ),
                          NavBarItem(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                            textStyle: TextStyle(fontSize: 14,
                                color: controller.isDarkMode.value ? Colors
                                    .white : Colors.black87,
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
                      child:
                      Obx(() {
                        return DayNightSwitcherIcon(
                          cloudsColor: Colors.white,
                           cratersColor: Colors.red,
                            isDarkModeEnabled: controller.isDarkMode.value,
                            onStateChanged: (val) {
                              controller.toggleDarkMode();
                            }


                        );
                      })
                  )
                ],
              ),
            ],
          )


      );
    });
  }
}

Widget mobileandtabbodyOne(BuildContext context) {
  double width = MediaQuery
      .sizeOf(context)
      .width;

  return Container(
    height: 500.h,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 20,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  AppString.hey,
                  style: TextStyle(
                    fontSize:
                    Responsive.isMobile(context) ? width / 40 : width / 75,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.italic,
                    color: AppColors.textDark80,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  AppString.myname,
                  style: TextStyle(
                      fontSize: Responsive.isMobile(context)
                          ? width / 30
                          : width / 50,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: AppColors.textDark80,
                      letterSpacing: 0.9),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  AppString.developerpart,
                  style: TextStyle(
                    fontSize:
                    Responsive.isMobile(context) ? width / 40 : width / 70,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: AppColors.textDark80,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  AppString.shortdescription,
                  style: TextStyle(
                    fontSize:
                    Responsive.isMobile(context) ? width / 40 : width / 70,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    color: AppColors.textDark80,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 50,
                  width: Responsive.isMobile(context) ? width / 4 : width / 4,
                  child: Center(
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.facebook,
                                size: 30,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.facebook,
                                size: 30,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.facebook,
                                size: 30,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    CoustomeButton(
                      child: Text('Contact Me'),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CoustomeButton(
                      child: Text('My Resume'),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Lottie.asset(
              AppImage.laptopimage,
              width: Responsive.isMobile(context) ? width / 1.5 : width / 30,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Column(
            children: [],
          )
        ],
      ),
    ),
  );
}

Widget bodyOne() {
  return Container(
    height: 500.h,
    width: double.infinity,
    child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    AppString.hey,
                    style: googlefonts().textStyle14black,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    AppString.myname,
                    style: googlefonts().textStyle20black,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    AppString.developerpart,
                    style: googlefonts().textStyle16black,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    AppString.shortdescription,
                    style: googlefonts().textStyle16blacknormal,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 10.h,
                    width: 100.w,
                    color: Colors.red,
                    child: Center(
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.facebook,
                                  size: 30,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.facebook,
                                  size: 30,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.facebook,
                                  size: 30,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    children: [
                      CoustomeButton(
                        child: Text('Contact Me >'),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CoustomeButton(
                        child: Text('My Resume'),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            )),
        Expanded(
            flex: 1,
            child: Column(
              children: [
                Lottie.asset(AppImage.laptopimage),
              ],
            ))
      ],
    ),
  );
}

Widget _BodyTwo() {
  return Container(
    height: 500.h,
    width: double.infinity,
    child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              children: [
                Lottie.asset(AppImage.developimage, height: 500.h),
              ],
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    AppString.hey,
                    style: googlefonts().textStyle14black,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    AppString.myname,
                    style: googlefonts().textStyle20black,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    AppString.developerpart,
                    style: googlefonts().textStyle16black,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    AppString.shortdescription,
                    style: googlefonts().textStyle16blacknormal,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 10.h,
                    width: 100.w,
                    color: Colors.red,
                    child: Center(
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.facebook,
                                  size: 30,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.facebook,
                                  size: 30,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.facebook,
                                  size: 30,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    children: [
                      CoustomeButton(
                        child: Text('Contact Me >'),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CoustomeButton(
                        child: Text('My Resume'),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            )),
      ],
    ),
  );
}
