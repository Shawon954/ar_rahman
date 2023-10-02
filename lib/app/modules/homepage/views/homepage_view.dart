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

class HomepageView extends GetView<HomepageController> with WidgetsBindingObserver {
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
              height: 350.h,
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
              height: 350.h,
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
                height: 620.h,
                width: double.infinity,
                color: Colors.green,
                child: Column(
                  children: [


                    SkillsSection(context,controller),
                  ],
                ),
            ),
            Container(
              height: 910.h,
              width: double.infinity,
              child: MYEducation(context, controller),
              color: Colors.blueAccent,
            ),


            Container(
              height: 950.h,
              width: double.infinity,
              color: Colors.pink,
              child: Column(
                children: [
                  Stack(
                    children: [
                   MyWorks(context, controller),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 950.h,
              width: double.infinity,
              color: Colors.pink,
              child: Column(
                children: [
                  Stack(
                    children: [
                      AchievementsAndCerticationsPortrate(context, controller)
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
              child: ContactMe(context, controller),
              color: Colors.deepPurple,
            ),
            Container(
              height: 390.h,
              width: double.infinity,
              child: DevelopBy(context, controller),
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
            // my intro //
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child:Container(
                    height: 357.h,
                    width: double.infinity,
                    child: BodyOne(context, controller),
                    color: Colors.cyan,
                  ),
                ),

                Expanded(
                  flex: 1,
                  child:Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 355.h,
                      width: double.infinity,
                      child: BodyOneImage(context),
                      color: Colors.grey,
                    ),
                  ),)
              ],
            ),

            // my about //
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 353.h,
                    width: double.infinity,
                    child: BodyTwoImage(context),
                    color: Colors.lime,
                  ),
                ),

                Expanded(
                  flex: 1,
                  child:Align(
                    alignment: Alignment.topRight,
                    child:Container(
                      height: 352.h,
                      width: double.infinity,
                      child: BodyTwoText(context, controller),
                      color: Colors.deepOrange,
                    ),
                  ),)
              ],
            ),

            // my skills //
            Column(
              children: [

                Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child:  Container(
                        height: 550.h,
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            SkillsSection(context,controller),
                          ],
                        ),
                        color: Colors.cyanAccent,
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child:Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height:550.h,
                          width: double.infinity,
                          child: BodyThreeImage(context),
                          color: Colors.teal,
                        ),
                      ),)
                  ],
                ),
              ],
            ),

            // my edu /
            // Row(
            //   children: [
            //     Expanded(
            //       flex: 1,
            //       child:  Container(
            //         height: 570.h,
            //         width: double.infinity,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //
            //
            //             MyEducationLOGO(context, controller),
            //           ],
            //         ),
            //         color: Colors.orange,
            //       ),
            //     ),
            //
            //     Expanded(
            //       flex: 1,
            //       child:Align(
            //         alignment: Alignment.topRight,
            //         child:   Container(
            //           height: 570.h,
            //           width: double.infinity,
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //
            //
            //               MYEducation(context, controller),
            //             ],
            //           ),
            //           color: Colors.orange,
            //         ),
            //       ),)
            //   ],
            // ),

            // my achiev //

            MyEducation1(context,controller),
            SizedBox(height: 20.h,),
            MyEducation2(context,controller),
            SizedBox(height: 20.h,),
            MyEducation3(context,controller),
            SizedBox(height: 20.h,),
            MyWorksLandscap(context, controller),
            SizedBox(height: 20.h,),
            AchievementsAndCertications(context, controller),
            // contact me //
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
                          height: 390.h,
                          width: double.infinity,
                          child: ContactMe(context, controller),
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                 ),
                ),


                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
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



            //
            // Container(
            //   height: 1000.h,
            //   width: double.infinity,
            //   child: Center(
            //     child: MYEducation(context, controller),
            //   ),
            // ),

            //  DevelopBy //

            // develop by //
            Center(
              child: DevelopBy(context, controller),
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
            image: Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Image.asset('assets/my_signature/signa.png',scale: 2.6,
              color:controller.isDarkMode.value ? Colors.white : Colors.black87 ,
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

                }
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
              GestureDetector(

                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/social/facebook.png'),
                ),
                onTap: (){},
              ),
              SizedBox(
                width: 6.w,
              ),
              GestureDetector(
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/social/github.png'),
                ),
                onTap: (){},
              ),
              SizedBox(
                width: 6.w,
              ),
              GestureDetector(
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/social/linkedin.png'),
                ),
                onTap: (){},
              ),
              SizedBox(
                width: 6.w,
              ),
              GestureDetector(
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/social/email.png',scale: 2.9,),
                ),
                onTap: (){},
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
                onPressed: (){

                },
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
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                GestureDetector(

                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/social/facebook.png'),
                  ),
                  onTap: (){},
                ),
                SizedBox(
                  width: 6.w,
                ),
                GestureDetector(
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/social/github.png'),
                  ),
                  onTap: (){},
                ),
                SizedBox(
                  width: 6.w,
                ),
                GestureDetector(
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/social/linkedin.png'),
                  ),
                  onTap: (){},
                ),
                SizedBox(
                  width: 6.w,
                ),
                GestureDetector(
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/social/email.png',scale: 2.9,),
                  ),
                  onTap: (){},
                ),
              ],
            ),
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

Widget SkillsSection(context,controller) {
  double width = MediaQuery.sizeOf(context).width;
  return Column(
    children: <Widget>[
      Container(
        height:100.h,
        width: double.infinity,
        child: Column(
          children: [

            Text('Skills',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize:
                Responsive.isMobile(context) ? width / 20 : width / 70,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Project Management",
                    style: googlefonts().textRegular14_W5Style(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize:
                      Responsive.isMobile(context) ? width / 35 : width / 85,
                      color:
                      controller.isDarkMode.value ? Colors.white : Colors.black87,
                    ),),
                ),

              ],
            ),
            SizedBox(
              height: 10.h,
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
      SizedBox(height: 15.h,),
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
                  child: Text("Dart",
                    style: googlefonts().textRegular14_W5Style(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize:
                      Responsive.isMobile(context) ? width / 35 : width / 85,
                      color:
                      controller.isDarkMode.value ? Colors.white : Colors.black87,
                    ),),
                ),

              ],
            ),
            SizedBox(
              height: 10.h,
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
      SizedBox(height: 15.h,),
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
                  child: Text("Flutter ",
                    style: googlefonts().textRegular14_W5Style(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize:
                      Responsive.isMobile(context) ? width / 35 : width / 85,
                      color:
                      controller.isDarkMode.value ? Colors.white : Colors.black87,
                    ),),
                ),

              ],
            ),
            SizedBox(
              height: 10.h,
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
      SizedBox(height: 15.h,),
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
                  child: Text("FireBase",
                    style: googlefonts().textRegular14_W5Style(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize:
                      Responsive.isMobile(context) ? width / 35 : width / 85,
                      color:
                      controller.isDarkMode.value ? Colors.white : Colors.black87,
                    ),),
                ),

              ],
            ),
            SizedBox(
              height: 10.h,
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
      SizedBox(height: 15.h,),
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
                  child: Text("OOP",
                    style: googlefonts().textRegular14_W5Style(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize:
                      Responsive.isMobile(context) ? width / 35 : width / 85,
                      color:
                      controller.isDarkMode.value ? Colors.white : Colors.black87,
                    ),),
                ),

              ],
            ),
            SizedBox(
              height: 10.h,
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
      SizedBox(height: 15.h,),
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
                  child: Text("Rest API",
                    style: googlefonts().textRegular14_W5Style(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize:
                      Responsive.isMobile(context) ? width / 35 : width / 85,
                      color:
                      controller.isDarkMode.value ? Colors.white : Colors.black87,
                    ),),
                ),

              ],
            ),
            SizedBox(
              height: 10.h,
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
      SizedBox(height: 15.h,),
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
                  child: Text("Figma UI/UX Design",
                    style: googlefonts().textRegular14_W5Style(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize:
                      Responsive.isMobile(context) ? width / 35 : width / 85,
                      color:
                      controller.isDarkMode.value ? Colors.white : Colors.black87,
                    ),),
                ),

              ],
            ),
            SizedBox(
              height: 10.h,
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

Widget MyEducation1(context,controller){
  double height = MediaQuery.sizeOf(context).height;
  double width = MediaQuery.sizeOf(context).width;
  return Column(
    children: [
      SizedBox(height: 15.h,),
      Text(
        'Education',
        style: googlefonts().textRegular18_B_Style(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontSize:
          Responsive.isMobile(context) ? width / 25 : width / 65,
          color:
          controller.isDarkMode.value ? Colors.white : Colors.black87,
        ),
      ),
      SizedBox(height: 25.h,),
      Padding(
        padding: const EdgeInsets.only(left: 120,right: 120,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

              height: 150.h,
              width: 38.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(90.r),
                ),
             image:  DecorationImage(image: AssetImage("assets/edu/dash.png",),scale:2.5 ),
                boxShadow: [
                  BoxShadow(spreadRadius: 6, color: Colors.black26, blurRadius: 10),
                ]),
             
            ),
            SizedBox(width: 20.w,),
            Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Daffodil Institute of Information Technology',
                style: googlefonts().textRegular18_B_Style(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize:
                  Responsive.isMobile(context) ? width / 25 : width / 70,
                  color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'B.Sc.in Computer Science Engineering',
                style: googlefonts().textRegular18_B_Style(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize:
                  Responsive.isMobile(context) ? width / 30 : width / 70,
                  color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'CGPA - 2.87',
                style: googlefonts().textRegular18_B_Style(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize:
                  Responsive.isMobile(context) ? width / 30 : width / 70,
                  color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '2017-2020',
                style: googlefonts().textRegular18_B_Style(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize:
                  Responsive.isMobile(context) ? width / 35 : width / 70,
                  color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
                ),
              ),
            ],
            )
          ],
        ),
      ),
    ],
  );

}

Widget MyEducation2(context,controller){
  double height = MediaQuery.sizeOf(context).height;
  double width = MediaQuery.sizeOf(context).width;
  return Column(
    children: [
      SizedBox(height: 15.h,),

      Padding(
        padding: const EdgeInsets.only(left: 120,right: 120,top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150.h,
              width: 38.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(90.r),
                ),
                
                boxShadow: [
                  BoxShadow(spreadRadius: 6, color: Colors.black26, blurRadius: 10),
                ]),
            ),
            SizedBox(width: 20.w,),
            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Kasemabad Siddikia Kamil Madrasha',
                  style: googlefonts().textRegular18_B_Style(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize:
                    Responsive.isMobile(context) ? width / 25 : width / 70,
                    color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Science',
                  style: googlefonts().textRegular18_B_Style(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                    color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'GPA - 4.89',
                  style: googlefonts().textRegular18_B_Style(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                    color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  '2013-2015',
                  style: googlefonts().textRegular18_B_Style(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize:
                    Responsive.isMobile(context) ? width / 35 : width / 70,
                    color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );

}

Widget MyEducation3(context,controller){
  double height = MediaQuery.sizeOf(context).height;
  double width = MediaQuery.sizeOf(context).width;
  return Column(

    children: [
      SizedBox(height: 15.h,),

      Padding(
        padding: const EdgeInsets.only(left: 120,right:120,top: 20,bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150.h,
              width: 38.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(90.r),
                ),
                image: DecorationImage(image: AssetImage("assets/edu/west_m_logo.jpg"),scale: 3.5),
                boxShadow: [
                  BoxShadow(spreadRadius: 6, color: Colors.black26, blurRadius: 10),
                ]),
            ),

            Column(
              children: [
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Paschim Saura Alim Madrasah',
                  style: googlefonts().textRegular18_B_Style(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize:
                    Responsive.isMobile(context) ? width / 25 : width / 70,
                    color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Science',
                  style: googlefonts().textRegular18_B_Style(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                    color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'GPA - 4.89',
                  style: googlefonts().textRegular18_B_Style(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                    color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  '2012-2013',
                  style: googlefonts().textRegular18_B_Style(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize:
                    Responsive.isMobile(context) ? width / 35 : width / 70,
                    color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );

}

Widget MyEducationLOGO(context, controller) {
  double height = MediaQuery.sizeOf(context).height;
  double width = MediaQuery.sizeOf(context).width;
  return Column(
    children: [
      // Diit //
      Container(
        height: Responsive.isMobile(context) ? height / 5 : height / 5,
        width: Responsive.isMobile(context) ? width / 3.3 : width / 10,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(90.r),
            ),
            image:  DecorationImage(image: AssetImage("assets/edu/dash.png",),scale:2.5 ),
            boxShadow: [
              BoxShadow(spreadRadius: 6, color: Colors.black26, blurRadius: 10),
            ]),
      ),
      SizedBox(height: 40.h,),

      // Kasemabad //
      Container(
        height: Responsive.isMobile(context) ? height / 5 : height / 5,
        width: Responsive.isMobile(context) ? width / 3.3 : width / 10,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(90.r),
            ),



            boxShadow: [
              BoxShadow(spreadRadius: 6, color: Colors.black26, blurRadius: 10),
            ]),
        child: CircleAvatar(
          radius: 50,
        ),
      ),
      SizedBox(height: 40.h,),

      // Paschimsura //
      Container(
        height: Responsive.isMobile(context) ? height / 5 : height / 5,
        width: Responsive.isMobile(context) ? width / 3.3 : width / 10,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(90.r),
            ),



            boxShadow: [
              BoxShadow(spreadRadius: 6, color: Colors.black26, blurRadius: 10),
            ]),
        child: CircleAvatar(
          radius: 35,
        ),
      ),
    ],
  );
}

Widget MYEducation(context, controller) {
  final height = MediaQuery.sizeOf(context).height;
  double width = MediaQuery.sizeOf(context).width;
  return Container(
    height: 570.h,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Education',
            style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize:
              Responsive.isMobile(context) ? width / 25 : width / 65,
              color:
              controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: Responsive.isMobile(context) ? height / 5 : height / 5,
              width: Responsive.isMobile(context) ? width / 3.3 : width / 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(90.r),
                  ),
                  image:  DecorationImage(image: AssetImage("assets/edu/dash.png",),scale:3.2 ),
                  boxShadow: [
                    BoxShadow(spreadRadius: 6, color: Colors.black26, blurRadius: 10),
                  ]),
            ),

            SizedBox(
              height: 25.h,
            ),
            Text(
              'Daffodil Institute of Information Technology',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize:
                    Responsive.isMobile(context) ? width / 25 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'B.Sc.in Computer Science Engineering',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'CGPA - 2.87',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              '2017-2020',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize:
                    Responsive.isMobile(context) ? width / 35 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        Column(
          children: [
            Container(
              height: Responsive.isMobile(context) ? height / 5 : height / 5,
              width: Responsive.isMobile(context) ? width / 3.3 : width / 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(90.r),
                  ),
                  boxShadow: [
                    BoxShadow(spreadRadius: 6, color: Colors.black26, blurRadius: 10),
                  ]),
            ),

            SizedBox(
              height: 25.h,
            ),
            Text(
              'Kasemabad Siddikia Kamil Madrasha',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize:
                    Responsive.isMobile(context) ? width / 25 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Science',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'GPA - 4.89',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              '2013-2015',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize:
                    Responsive.isMobile(context) ? width / 35 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Column(
          children: [
            Container(
              height: Responsive.isMobile(context) ? height / 5 : height / 5,
              width: Responsive.isMobile(context) ? width / 3.3 : width / 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(90.r),
                  ),
                  image:  DecorationImage(image: AssetImage("assets/edu/west_m_logo.jpg",),scale:2.5 ),
                  boxShadow: [
                    BoxShadow(spreadRadius: 6, color: Colors.black26, blurRadius: 10),
                  ]),
            ),

            SizedBox(
              height: 25.h,
            ),
            Text(
              'Paschim Saura Alim Madrasah',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize:
                    Responsive.isMobile(context) ? width / 25 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Science',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'GPA - 4.89',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize:
                    Responsive.isMobile(context) ? width / 30 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              '2012-2013',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize:
                    Responsive.isMobile(context) ? width / 35 : width / 70,
                color:
                    controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget MyWorks(context,controller) {
  double height = MediaQuery.sizeOf(context).height;
  double width = MediaQuery.sizeOf(context).width;
  return Container(
    height: 950.h,
    width: double.infinity,
    color: Colors.red,
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(

        children: [
          Center(
            child: Text('My Work',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize:
                Responsive.isMobile(context) ? width / 25 : width / 65,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5,top: 50,right: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Responsive.isMobile(context)?height/2.2:height/1.5,
                    width: Responsive.isMobile(context)?width/1.6:width/3.4,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 5,
                            color: Colors.black26,
                          )
                        ]
                    ),
                    child: Stack(
                      children: [
                        Column(

                          children: [
                            Expanded(
                              flex:2,
                              child: Center(
                                  child: Container(
                                    height: 150,
                                    width: 250,
                                    color: Colors.orange,
                                  )
                              ),
                            ),

                            Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Text('SDMGA',
                                  style: googlefonts().textRegular18_B_Style(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                    Responsive.isMobile(context) ? width / 35 : width / 65,
                                    color:
                                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                                  ),
                                ),
                                  SizedBox(height: 20.h,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                    child:
                                    CoustomeButton(
                                      height: 30.h,
                                      width: 60.w,
                                      child: Text('View'),
                                      onPressed: () {},
                                    ),
                                  )
                                ],))
                          ],
                        )
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 5,top: 30,right: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Responsive.isMobile(context)?height/2.8:height/1.5,
                    width: Responsive.isMobile(context)?width/1.6:width/3.4,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 5,
                            color: Colors.black26,
                          )
                        ]
                    ),
                    child: Stack(
                      children: [
                        Column(

                          children: [
                            Expanded(
                              flex:1,
                              child: Center(
                                  child: Container(
                                    height: 100,
                                    width: 250,
                                    color: Colors.orange,
                                  )
                              ),
                            ),

                            Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [  Text('SDMGA',
                                  style: googlefonts().textRegular18_B_Style(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                    Responsive.isMobile(context) ? width / 35 : width / 65,
                                    color:
                                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                                  ),
                                ),
                                  SizedBox(height: 20.h,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                    child:
                                    CoustomeButton(
                                      height: 30.h,
                                      width: 60.w,
                                      child: Text('View'),
                                      onPressed: () {},
                                    ),
                                  )
                                ],))
                          ],
                        )
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 5,top: 30,right: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Responsive.isMobile(context)?height/2.8:height/1.5,
                    width: Responsive.isMobile(context)?width/1.6:width/3.4,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 5,
                            color: Colors.black26,
                          )
                        ]
                    ),
                    child: Stack(
                      children: [
                        Column(

                          children: [
                            Expanded(
                              flex:1,
                              child: Center(
                                  child: Container(
                                    height: 100,
                                    width: 250,
                                    color: Colors.orange,
                                  )
                              ),
                            ),

                            Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [  Text('SDMGA',
                                  style: googlefonts().textRegular18_B_Style(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                    Responsive.isMobile(context) ? width / 35 : width / 65,
                                    color:
                                    controller.isDarkMode.value ? Colors.white : Colors.black87,
                                  ),
                                ),
                                  SizedBox(height: 20.h,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                    child:
                                    CoustomeButton(
                                      height: 30.h,
                                      width: 60.w,
                                      child: Text('View'),
                                      onPressed: () {},
                                    ),
                                  )
                                ],))
                          ],
                        )
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),

        ],
      ),
    ),
  );
}

Widget MyWorksLandscap(context,controller) {
  double height = MediaQuery.sizeOf(context).height;
  double width = MediaQuery.sizeOf(context).width;
  return Container(
    height: 950.h,
    width: double.infinity,
    color: Colors.red,
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(

        children: [

          Center(
            child: Text('My Work',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize:
                Responsive.isMobile(context) ? width / 25 : width / 65,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5,top: 25),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Responsive.isMobile(context)?height/2.2:height/1.5,
                          width: Responsive.isMobile(context)?width/1.6:width/3.4,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  color: Colors.black26,
                                )
                              ]
                          ),
                          child: Stack(
                            children: [
                              Column(

                                children: [
                                  Expanded(
                                    flex:2,
                                    child: Center(
                                        child: Container(
                                          height: 250.h,
                                          width: 250.w,
                                          color: Colors.orange,
                                        )
                                    ),
                                  ),

                                  Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                        Text('SDMGA',
                                        style: googlefonts().textRegular18_B_Style(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          fontSize:
                                          Responsive.isMobile(context) ? width / 35 : width / 65,
                                          color:
                                          controller.isDarkMode.value ? Colors.white : Colors.black87,
                                        ),
                                      ),
                                        SizedBox(height: 20.h,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                          child:
                                          CoustomeButton(
                                            height: Responsive.isMobile(context) ? height / 35 : height / 20,
                                            width: Responsive.isMobile(context) ? width / 35 : width /15,
                                            child: Text('View'),
                                            onPressed: () {},
                                          ),
                                        )
                                      ],
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5,top: 30,right: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Responsive.isMobile(context)?height/2.8:height/1.5,
                          width: Responsive.isMobile(context)?width/1.6:width/3.4,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  color: Colors.black26,
                                )
                              ]
                          ),
                          child: Stack(
                            children: [
                              Column(

                                children: [
                                  Expanded(
                                    flex:1,
                                    child: Center(
                                        child: Container(
                                          height: 100,
                                          width: 250,
                                          color: Colors.orange,
                                        )
                                    ),
                                  ),

                                  Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [  Text('SDMGA',
                                        style: googlefonts().textRegular18_B_Style(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          fontSize:
                                          Responsive.isMobile(context) ? width / 35 : width / 65,
                                          color:
                                          controller.isDarkMode.value ? Colors.white : Colors.black87,
                                        ),
                                      ),
                                        SizedBox(height: 20.h,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                          child:
                                          CoustomeButton(
                                            height: Responsive.isMobile(context) ? height / 35 : height / 20,
                                            width: Responsive.isMobile(context) ? width / 35 : width /15,
                                            child: Text('View'),
                                            onPressed: () {},
                                          ),
                                        )
                                      ],))
                                ],
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5,top: 30,right: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Responsive.isMobile(context)?height/2.8:height/1.5,
                          width: Responsive.isMobile(context)?width/1.6:width/3.4,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  color: Colors.black26,
                                )
                              ]
                          ),
                          child: Stack(
                            children: [
                              Column(

                                children: [
                                  Expanded(
                                    flex:1,
                                    child: Center(
                                        child: Container(
                                          height: 100,
                                          width: 250,
                                          color: Colors.orange,
                                        )
                                    ),
                                  ),

                                  Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [  Text('SDMGA',
                                        style: googlefonts().textRegular18_B_Style(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          fontSize:
                                          Responsive.isMobile(context) ? width / 35 : width / 65,
                                          color:
                                          controller.isDarkMode.value ? Colors.white : Colors.black87,
                                        ),
                                      ),
                                        SizedBox(height: 20.h,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                          child:
                                          CoustomeButton(
                                            height: Responsive.isMobile(context) ? height / 35 : height / 20,
                                            width: Responsive.isMobile(context) ? width / 35 : width /15,
                                            child: Text('View'),
                                            onPressed: () {},
                                          ),
                                        )
                                      ],))
                                ],
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget AchievementsAndCertications(context, controller) {
  double height = MediaQuery.sizeOf(context).height;
  double width = MediaQuery.sizeOf(context).width;
  return Container(
    height: 600.h,
    width: double.infinity,
    color: Colors.blueAccent,
    child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(

        children: [
          Center(
            child: Text('Achievements And Certifications',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize:
                Responsive.isMobile(context) ? width / 30 : width / 65,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 60,right: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                     height: Responsive.isMobile(context)?height/20:height/1.5,
                     width: Responsive.isMobile(context)?width/20:width/3.4,

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(30)),
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           blurRadius: 10,
                           spreadRadius: 5,
                           color: Colors.black26,
                         )
                       ]
                     ),
                     child: Stack(
                       children: [
                         Column(

                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 20),
                               child: Center(
                                 child: Container(
                                   height: Responsive.isMobile(context)?height/20:height/2.5,
                                   width: Responsive.isMobile(context)?width/20:width/4.6,

                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(35.r),
                                           bottomRight: Radius.circular(35.r)),

                                       color: Colors.blueAccent,
                                       boxShadow: [
                                         BoxShadow(
                                           blurRadius: 10,
                                           spreadRadius: 5,
                                           color: Colors.black26,
                                         )
                                       ]
                                   ),
                                 ),
                               ),
                             ),
                            SizedBox(height: 25.h,),
                             Text('SDMGA',
                               style: googlefonts().textRegular18_B_Style(
                                 fontStyle: FontStyle.normal,
                                 fontWeight: FontWeight.w600,
                                 fontSize:
                                 Responsive.isMobile(context) ? width / 35 : width / 65,
                                 color:
                                 controller.isDarkMode.value ? Colors.white : Colors.black87,
                               ),
                             ),
                             SizedBox(height: 20.h,),
                             Text('Skill Development for Mobile Game & Application',
                               style: googlefonts().textRegular18_B_Style(
                                 fontStyle: FontStyle.normal,
                                 fontWeight: FontWeight.w500,
                                 fontSize:
                                 Responsive.isMobile(context) ? width / 35 : width / 90,
                                 color:
                                 controller.isDarkMode.value ? Colors.white : Colors.black87,
                               ),
                             )

                           ],
                         )
                       ],
                     ),
                   ),
SizedBox(width: 10.w,),
                  Container(
                     height: Responsive.isMobile(context)?height/20:height/1.5,
                     width: Responsive.isMobile(context)?width/20:width/3.4,

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(30)),
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           blurRadius: 10,
                           spreadRadius: 5,
                           color: Colors.black26,
                         ),

                       ]
                     ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  height: Responsive.isMobile(context)?height/20:height/2.5,
                                  width: Responsive.isMobile(context)?width/20:width/4.6,

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(35.r),bottomLeft: Radius.circular(35.r)),
                                      color: Colors.blueAccent,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 5,
                                          color: Colors.black26,
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 25.h,),
                            Text('SDMGA',
                              style: googlefonts().textRegular18_B_Style(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize:
                                Responsive.isMobile(context) ? width / 35 : width / 65,
                                color:
                                controller.isDarkMode.value ? Colors.white : Colors.black87,
                              ),
                            ),
                            SizedBox(height: 20.h,),
                            Text('Skill Development for Mobile Game & Application',
                              style: googlefonts().textRegular18_B_Style(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize:
                                Responsive.isMobile(context) ? width / 35 : width / 90,
                                color:
                                controller.isDarkMode.value ? Colors.white : Colors.black87,
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                   ),

                  SizedBox(width: 10.w,),
                  Container(
                     height: Responsive.isMobile(context)?height/20:height/1.5,
                     width: Responsive.isMobile(context)?width/20:width/3.4,

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(30)),
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           blurRadius: 10,
                           spreadRadius: 5,
                           color: Colors.black26,
                         )
                       ]
                     ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Container(
                        height: Responsive.isMobile(context)?height/20:height/2.5,
                        width: Responsive.isMobile(context)?width/20:width/4.6,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(35.r),
                                bottomRight: Radius.circular(35.r)),
                            color: Colors.blueAccent,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 5,
                                color: Colors.black26,
                              )
                            ]
                        ),
                        ),
                      ),
                    ),
                            SizedBox(height: 25.h,),
                            Text('SDMGA',
                              style: googlefonts().textRegular18_B_Style(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize:
                                Responsive.isMobile(context) ? width / 35 : width / 65,
                                color:
                                controller.isDarkMode.value ? Colors.white : Colors.black87,
                              ),
                            ),
                            SizedBox(height: 20.h,),
                            Text('Skill Development for Mobile Game & Application',
                              style: googlefonts().textRegular18_B_Style(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize:
                                Responsive.isMobile(context) ? width / 35 : width / 90,
                                color:
                                controller.isDarkMode.value ? Colors.white : Colors.black87,
                              ),
                            )

                          ],
                        )
                      ],
                    ),
                   ),
                ],
              ),
            ),
          )

        ],
      ),
    ),
  );
}

Widget AchievementsAndCerticationsPortrate(context, controller) {
  double height = MediaQuery.sizeOf(context).height;
  double width = MediaQuery.sizeOf(context).width;
  return Container(
    height: 950.h,
    width: double.infinity,
    color: Colors.red,
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(

        children: [
          Center(
            child: Text('Achievements And Certifications',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize:
                Responsive.isMobile(context) ? width / 25 : width / 65,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5,top: 50,right: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                     height: Responsive.isMobile(context)?height/2.8:height/1.5,
                     width: Responsive.isMobile(context)?width/1.6:width/3.4,

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(15)),
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           blurRadius: 10,
                           spreadRadius: 5,
                           color: Colors.black26,
                         )
                       ]
                     ),
                     child: Stack(
                       children: [
                         Column(

                           children: [
                             Expanded(
                               flex:1,
                               child: Center(
                                 child: Container(
                                   height: 100,
                                   width: 250,
                                   color: Colors.orange,
                                 )
                               ),
                             ),

                           Expanded(
                               flex: 1,
                               child: Column(children: [  Text('SDMGA',
                             style: googlefonts().textRegular18_B_Style(
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w600,
                               fontSize:
                               Responsive.isMobile(context) ? width / 35 : width / 65,
                               color:
                               controller.isDarkMode.value ? Colors.white : Colors.black87,
                             ),
                           ),
                             SizedBox(height: 20.h,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10,right: 10),
                               child: Text('Skill Development for Mobile Game & Application',
                                 style: googlefonts().textRegular18_B_Style(
                                   fontStyle: FontStyle.normal,
                                   fontWeight: FontWeight.w500,
                                   fontSize:
                                   Responsive.isMobile(context) ? width / 35 : width / 90,
                                   color:
                                   controller.isDarkMode.value ? Colors.white : Colors.black87,
                                 ),
                               ),
                             )
                           ],))
                           ],
                         )
                       ],
                     ),
                   ),


                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 5,top: 30,right: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                     height: Responsive.isMobile(context)?height/2.8:height/1.5,
                     width: Responsive.isMobile(context)?width/1.6:width/3.4,

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(15)),
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           blurRadius: 10,
                           spreadRadius: 5,
                           color: Colors.black26,
                         )
                       ]
                     ),
                     child: Stack(
                       children: [
                         Column(

                           children: [
                             Expanded(
                               flex:1,
                               child: Center(
                                 child: Container(
                                   height: 100,
                                   width: 250,
                                   color: Colors.orange,
                                 )
                               ),
                             ),

                           Expanded(
                               flex: 1,
                               child: Column(children: [  Text('SDMGA',
                             style: googlefonts().textRegular18_B_Style(
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w600,
                               fontSize:
                               Responsive.isMobile(context) ? width / 35 : width / 65,
                               color:
                               controller.isDarkMode.value ? Colors.white : Colors.black87,
                             ),
                           ),
                             SizedBox(height: 20.h,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10,right: 10),
                               child: Text('Skill Development for Mobile Game & Application',
                                 style: googlefonts().textRegular18_B_Style(
                                   fontStyle: FontStyle.normal,
                                   fontWeight: FontWeight.w500,
                                   fontSize:
                                   Responsive.isMobile(context) ? width / 35 : width / 90,
                                   color:
                                   controller.isDarkMode.value ? Colors.white : Colors.black87,
                                 ),
                               ),
                             )
                           ],))
                           ],
                         )
                       ],
                     ),
                   ),


                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 5,top: 30,right: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                     height: Responsive.isMobile(context)?height/2.8:height/1.5,
                     width: Responsive.isMobile(context)?width/1.6:width/3.4,

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(15)),
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           blurRadius: 10,
                           spreadRadius: 5,
                           color: Colors.black26,
                         )
                       ]
                     ),
                     child: Stack(
                       children: [
                         Column(

                           children: [
                             Expanded(
                               flex:1,
                               child: Center(
                                 child: Container(
                                   height: 100,
                                   width: 250,
                                   color: Colors.orange,
                                 )
                               ),
                             ),

                           Expanded(
                               flex: 1,
                               child: Column(children: [  Text('SDMGA',
                             style: googlefonts().textRegular18_B_Style(
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w600,
                               fontSize:
                               Responsive.isMobile(context) ? width / 35 : width / 65,
                               color:
                               controller.isDarkMode.value ? Colors.white : Colors.black87,
                             ),
                           ),
                             SizedBox(height: 20.h,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10,right: 10),
                               child: Text('Skill Development for Mobile Game & Application',
                                 style: googlefonts().textRegular18_B_Style(
                                   fontStyle: FontStyle.normal,
                                   fontWeight: FontWeight.w500,
                                   fontSize:
                                   Responsive.isMobile(context) ? width / 35 : width / 90,
                                   color:
                                   controller.isDarkMode.value ? Colors.white : Colors.black87,
                                 ),
                               ),
                             )
                           ],))
                           ],
                         )
                       ],
                     ),
                   ),


                ],
              ),
            ),
          ),

        ],
      ),
    ),
  );
}

Widget ContactMe(context, controller) {
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
            child: Text('Contact',
              style: googlefonts().textRegular18_B_Style(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize:
                Responsive.isMobile(context) ? width / 25 : width / 65,
                color:
                controller.isDarkMode.value ? Colors.white : Colors.black87,
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'Wanna talk about a project or just say in HI',
            style: googlefonts().textRegular14_W5Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Say Hello',
            style: googlefonts().textRegular14_W5Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                'E-mail',
                style: googlefonts().textRegular14_W5Style(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize:
                      Responsive.isMobile(context) ? width / 30 : width / 90,
                  color: controller.isDarkMode.value
                      ? Colors.white
                      : Colors.black87,
                ),
              ),
              Text(
                'shawoncse954@gmail.com',
                style: googlefonts().textRegular14_W5Style(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize:
                      Responsive.isMobile(context) ? width / 30 : width / 90,
                  color: controller.isDarkMode.value
                      ? Colors.white
                      : Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                'Phone :',
                style: googlefonts().textRegular14_W5Style(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize:
                      Responsive.isMobile(context) ? width / 30 : width / 90,
                  color: controller.isDarkMode.value
                      ? Colors.white
                      : Colors.black87,
                ),
              ),
              Text(
                '+88 01775389319',
                style: googlefonts().textRegular14_W5Style(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize:
                      Responsive.isMobile(context) ? width / 30 : width / 90,
                  color: controller.isDarkMode.value
                      ? Colors.white
                      : Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'Find me in',
            style: googlefonts().textRegular14_W5Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: Responsive.isMobile(context) ? width / 30 : width / 80,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Dhaka,Bangladesh',
            style: googlefonts().textRegular14_W5Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Social Network',
            style: googlefonts().textRegular14_W5Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    ),
  );
}

Widget DevelopBy(context, controller) {
  final width = MediaQuery.sizeOf(context).width;
  return Container(
    height: 250.h,
    width: double.infinity,
    color: Colors.orange,
    child: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Text(
            'Develop By',
            style: googlefonts().textRegular18_B_Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: Responsive.isMobile(context) ? width / 30 : width / 70,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'MD.ABDUR RAHMAN (SHAWON)',
            style: googlefonts().textRegular14_W5Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Flutter App Developer',
            style: googlefonts().textRegular14_W5Style(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: Responsive.isMobile(context) ? width / 30 : width / 90,
              color:
                  controller.isDarkMode.value ? Colors.white : Colors.black87,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    ),
  );
}


