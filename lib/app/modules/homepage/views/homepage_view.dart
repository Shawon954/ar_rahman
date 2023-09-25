import 'package:ar_rahman/app/core/app_image/app_images.dart';
import 'package:ar_rahman/app/core/app_string/app_string.dart';
import 'package:ar_rahman/app/coustom_widget/backround_screen/backround_screen.dart';
import 'package:ar_rahman/app/responsive/responsive_screen.dart';
import 'package:ar_rahman/app/utility/text_style/textstyle.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../coustom_widget/button/button.dart';
import '../../../coustom_widget/coustom_appbar/coustom_app_bar.dart';
import '../../../coustom_widget/coustom_appbar/navbar.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController>
    with WidgetsBindingObserver {
  final HomepageController _homepageController = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Obx(() {
        return BackroundScreen(
          BackroundColor:
              controller.isDarkMode.value ? Colors.black87 : Colors.white,
          body: OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.portrait
                    ? buildPortrait(context, controller)
                    : buildLandscape(context, controller),
          ),
        );
      }),
    );
  }
}

Widget buildPortrait(context, controller) => Container(
      height: 900,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CoustomAppbar(context, controller),
            Container(
              height: 310.h,
              width: double.infinity,
              child: BodyOne(context, controller),
              color: Colors.red,
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 300.h,
              width: double.infinity,
              child: BodyOneImage(context),
              color: Colors.yellow,
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 310.h,
              width: double.infinity,
              child: BodyTwoText(context, controller),
              color: Colors.purple,
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 302.h,
              width: double.infinity,
              child: BodyTwoImage(context),
              color: Colors.deepPurple,
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
                height: 400.h,
                width: double.infinity,
                color: Colors.green,
                child: Column(
                  children: [
                    Text('Skills'),
                    SizedBox(
                      height: 20.h,
                    ),
                    SkillsSection(context),
                  ],
                )),
            Container(
              height: 390.h,
              width: double.infinity,
              color: Colors.pink,
              child: Column(
                children: [
                  Stack(
                    children: [
                      MyWorks(),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 390.h,
              width: double.infinity,
              child: ContactMeImage(context),
              color: Colors.lightGreenAccent,
            ),
            Container(
              height: 390.h,
              width: double.infinity,
              child: ContactMe(context,controller),
              color: Colors.deepPurple,
            ),

            Container(
              height: 390.h,
              width: double.infinity,
              child: DevelopBy(context,controller),
              color: Colors.blueAccent,
            ),
            Container(
              height: 910.h,
              width: double.infinity,
              child: MYEducation(context,controller),
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );

Widget buildLandscape(context, controller) => Container(
      height: 900,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CoustomAppbar(context, controller),
            Row(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Column(
                      children: [
                        Container(
                          height: 357.h,
                          width: double.infinity,
                          child: BodyOne(context, controller),
                          color: Colors.cyan,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 353.h,
                          width: double.infinity,
                          child: BodyTwoImage(context),
                          color: Colors.lime,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 390.h,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text('Skills'),
                              SizedBox(
                                height: 20.h,
                              ),
                              SkillsSection(context),
                            ],
                          ),
                          color: Colors.cyanAccent,
                        ),
                        Container(
                          height: 390.h,
                          width: double.infinity,
                          child: ContactMe(context,controller),
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                )),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 355.h,
                            width: double.infinity,
                            child: BodyOneImage(context),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 352.h,
                          width: double.infinity,
                          child: BodyTwoText(context, controller),
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 390.h,
                          width: double.infinity,
                          child: BodyThreeImage(context),
                          color: Colors.teal,
                        ),
                        Container(
                          height: 390.h,
                          width: double.infinity,
                         child: ContactMeImage(context),
                          color: Colors.lightGreenAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Center(
              child: DevelopBy(context,controller),
            )
          ],
        ),
      ),
    );

Widget CoustomAppbar(context, controller) {
  final width = MediaQuery.sizeOf(context).width;
  return Row(
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
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            navBarItems: [
              NavBarItem(
                hoverColor: controller.isDarkMode.value
                    ? Colors.white54
                    : Colors.black12,
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
                hoverColor: controller.isDarkMode.value
                    ? Colors.white54
                    : Colors.black12,
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
                hoverColor: controller.isDarkMode.value
                    ? Colors.white54
                    : Colors.black12,
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
                hoverColor: controller.isDarkMode.value
                    ? Colors.white54
                    : Colors.black12,
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
                hoverColor: controller.isDarkMode.value
                    ? Colors.white54
                    : Colors.black12,
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
  );
}

Widget BodyOne(context, controller) {
  final width = MediaQuery.sizeOf(context).width;

  return Padding(
    padding: const EdgeInsets.only(top: 15, left: 12, right: 12),
    child: Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          AppString.hey,
          style: googlefonts().textRegular16_W6_Style(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
            color: controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          AppString.myname,
          style: googlefonts().textRegular18_B_Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: Responsive.isMobile(context) ? width / 20 : width / 70,
            color: controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          AppString.developerpart,
          style: googlefonts().textRegular16_W6_Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: Responsive.isMobile(context) ? width / 25 : width / 70,
            color: controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          AppString.shortdescription,
          style: googlefonts().textRegular14_W5Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: Responsive.isMobile(context) ? width / 35 : width / 70,
            color: controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16,
              ),
              SizedBox(
                width: 6.w,
              ),
              CircleAvatar(
                radius: 16,
              ),
              SizedBox(
                width: 6.w,
              ),
              CircleAvatar(
                radius: 16,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              CoustomeButton(
                child: Text('Contact me'),
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
          ),
        ),
      ],
    ),
  );
}

Widget BodyTwoText(context, controller) {
  final width = MediaQuery.sizeOf(context).width;

  return Padding(
    padding: const EdgeInsets.only(top: 15, left: 12, right: 12),
    child: SizedBox(
      width: width / 1.2,
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            AppString.hey,
            style: googlefonts().textRegular16_W6_Style(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            AppString.myname,
            style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: Responsive.isMobile(context) ? width / 20 : width / 70,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            AppString.developerpart,
            style: googlefonts().textRegular16_W6_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: Responsive.isMobile(context) ? width / 25 : width / 70,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            AppString.shortdescription,
            style: googlefonts().textRegular14_W5Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: Responsive.isMobile(context) ? width / 35 : width / 70,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 16,
              ),
              SizedBox(
                width: 6.w,
              ),
              CircleAvatar(
                radius: 16,
              ),
              SizedBox(
                width: 6.w,
              ),
              CircleAvatar(
                radius: 16,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              CoustomeButton(
                child: Text('Contact me'),
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
          ),
        ],
      ),
    ),
  );
}

Widget BodyOneImage(context) {
  final hieght = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
  return Lottie.asset(AppImage.laptopimage,
      height: Responsive.isMobile(context) ? hieght / 1.5 : hieght / 1.2,
      width: Responsive.isMobile(context) ? width / 1 : width / 2.5);
}

Widget BodyTwoImage(context) {
  final hieght = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
  return Lottie.asset(AppImage.developimage,
      height: Responsive.isMobile(context) ? hieght / 1.5 : hieght / 1.2,
      width: Responsive.isMobile(context) ? width / 1 : width / 1);
}

Widget BodyThreeImage(context) {
  final hieght = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
  return Lottie.asset(AppImage.dscs,
      height: Responsive.isMobile(context) ? hieght / 1.5 : hieght / 1.2,
      width: Responsive.isMobile(context) ? width / 1 : width / 1);
}

Widget ContactMeImage(context) {
  final hieght = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
  return SvgPicture.asset(AppImage.contactimagesection,
      height: Responsive.isMobile(context) ? hieght / 1.7 : hieght / 1.7,
      width: Responsive.isMobile(context) ? width / 1.2 : width / 1.2);
}





Widget SkillsSection(context) {
  return Column(
    children: <Widget>[
      Container(
        height: 50.h,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Project Management"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text("75 %"),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            LinearPercentIndicator(
              width: 160.w,
              lineHeight: 8.0,
              percent: 0.7,
              progressColor: Colors.red,
            ),
          ],
        ),
      ),
      Container(
        height: 50.h,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Dart'"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text("80 %"),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            LinearPercentIndicator(
              width: 160.w,
              lineHeight: 8.0,
              percent: 0.8,
              progressColor: Colors.red,
            ),
          ],
        ),
      ),
      Container(
        height: 50.h,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Flutter "),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text("90 %"),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            LinearPercentIndicator(
              width: 160.w,
              lineHeight: 8.0,
              percent: 0.9,
              progressColor: Colors.red,
            ),
          ],
        ),
      ),
      Container(
        height: 50.h,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("FireBase"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text("80 %"),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            LinearPercentIndicator(
              width: 160.w,
              lineHeight: 8.0,
              percent: 0.8,
              progressColor: Colors.red,
            ),
          ],
        ),
      ),
      Container(
        height: 50.h,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("OOP"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text("70 %"),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            LinearPercentIndicator(
              width: 160.w,
              lineHeight: 8.0,
              percent: 0.7,
              progressColor: Colors.red,
            ),
          ],
        ),
      ),
      Container(
        height: 50.h,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Rest API"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text("90 %"),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            LinearPercentIndicator(
              width: 160.w,
              lineHeight: 8.0,
              percent: 0.9,
              progressColor: Colors.red,
            ),
          ],
        ),
      ),
      Container(
        height: 50.h,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Figma UI/UX Design"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text("85 %"),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            LinearPercentIndicator(
              width: 160.w,
              lineHeight: 8.0,
              percent: 0.8,
              progressColor: Colors.red,
            ),
          ],
        ),
      ),
    ],
  );
}


Widget MYEducation(context,controller){
 final width = MediaQuery.sizeOf(context).width;
  return Container(
    height: 700.h,
    width: double.infinity,
    child: Column(
      children: [
       SizedBox(height: 20.h,),


        Column(
          children: [
            Container(
              height: 140.h,
              width: 115.w,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(90.r),
                  ),

                  boxShadow: [


                    BoxShadow(
                        spreadRadius: 6,
                        color: Colors.black26,
                        blurRadius: 10
                    ),
                  ]

              ),
            ),
            SizedBox(height: 20.h,),
            Text('Daffodil Institute of Information Technology', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,

              fontSize: Responsive.isMobile(context) ? width / 25 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
            SizedBox(height: 10.h,),
            Text('B.Sc.in Computer Science Engineering', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,

              fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
            SizedBox(height: 10.h,),
            Text('CGPA - 2.87', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,

              fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
            SizedBox(height: 10.h,),
            Text('2017-2020', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,

              fontSize: Responsive.isMobile(context) ? width / 35 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),

          ],
        ),
SizedBox(height: 20.h,),
        Column(
          children: [
            Container(
              height: 140.h,
              width: 115.w,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(90.r),
                  ),

                  boxShadow: [


                    BoxShadow(
                        spreadRadius: 6,
                        color: Colors.black26,
                        blurRadius: 10
                    ),
                  ]

              ),
            ),
            SizedBox(height: 20.h,),
            Text('Kasemabad Siddikia Kamil Madrasha', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,

              fontSize: Responsive.isMobile(context) ? width / 25 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
            SizedBox(height: 10.h,),
            Text('Science', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,

              fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
            SizedBox(height: 10.h,),
            Text('GPA - 4.89', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,

              fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
            SizedBox(height: 10.h,),
            Text('2013-2015', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,

              fontSize: Responsive.isMobile(context) ? width / 35 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),

          ],
        ),

        SizedBox(height: 20.h,),

        Column(
          children: [
            Container(
              height: 140.h,
              width: 115.w,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(90.r),
                  ),

                  boxShadow: [


                    BoxShadow(
                        spreadRadius: 6,
                        color: Colors.black26,
                        blurRadius: 10
                    ),
                  ]

              ),
            ),
            SizedBox(height: 20.h,),
            Text('Paschim Saura Alim Madrasah', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,

              fontSize: Responsive.isMobile(context) ? width / 25 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
            SizedBox(height: 10.h,),
            Text('Science', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,

              fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
            SizedBox(height: 10.h,),
            Text('GPA - 4.89', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,

              fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
            SizedBox(height: 10.h,),
            Text('2012-2013', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,

              fontSize: Responsive.isMobile(context) ? width / 35 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),

          ],
        ),



      ],
    ),
  );
}


Widget MyWorks() {
  return Container(
    height: 250.h,
    width: double.infinity,
    color: Colors.yellow,
    child: Column(
      children: [],
    ),
  );
}

Widget ContactMe(context,controller) {
  final width = MediaQuery.sizeOf(context).width;

  return Container(
    height: 250.h,
    width: double.infinity,
    color: Colors.deepOrangeAccent,
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text('Contact Me', style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,

              fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),),
          ),
          SizedBox(
            height: 25.h,
          ),
          Text('Wanna talk about a project or just say in HI', style: googlefonts().textRegular14_W5Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
            color:
            controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),),
          SizedBox(
            height: 15.h,
          ),
          Text('Say Hello', style: googlefonts().textRegular14_W5Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
            color:
            controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text('E-mail', style: googlefonts().textRegular14_W5Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),),
              Text('shawoncse954@gmail.com', style: googlefonts().textRegular14_W5Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text('Phone :', style: googlefonts().textRegular14_W5Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),),
              Text('+88 01775389319', style: googlefonts().textRegular14_W5Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: Responsive.isMobile(context) ? width / 30 : width /90,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),),
            ],
          ),

          SizedBox(
            height: 25.h,
          ),

          Text('Find me in', style: googlefonts().textRegular14_W5Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: Responsive.isMobile(context) ? width / 30 : width / 80,
            color:
            controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),),
          SizedBox(
            height: 15.h,
          ),
          Text('Dhaka,Bangladesh', style: googlefonts().textRegular14_W5Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
            color:
            controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),),
          SizedBox(
            height: 15.h,
          ),
          Text('Social Network', style: googlefonts().textRegular14_W5Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
            color:
            controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    ),
  );
}


Widget DevelopBy(context,controller) {
  final width = MediaQuery.sizeOf(context).width;
  return Container(
    height: 250.h,
    width: double.infinity,
    color: Colors.orange,
    child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text('Develop By', style: googlefonts().textRegular18_B_Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,

            fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
            color:
            controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),),
          SizedBox(
            height: 25.h,
          ),
          Text('MD.ABDUR RAHMAN (SHAWON)', style: googlefonts().textRegular14_W5Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
            color:
            controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),),
          SizedBox(
            height: 15.h,
          ),
          Text('Flutter App Developer', style: googlefonts().textRegular14_W5Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
            color:
            controller.isDarkMode.value ? Colors.white : Colors.black87,
          ),),

          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    ),
  );
}
