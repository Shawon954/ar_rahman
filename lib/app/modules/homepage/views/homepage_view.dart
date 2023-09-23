import 'package:ar_rahman/app/core/app_image/app_images.dart';
import 'package:ar_rahman/app/core/app_string/app_string.dart';
import 'package:ar_rahman/app/coustom_widget/backround_screen/backround_screen.dart';
import 'package:ar_rahman/app/responsive/responsive_screen.dart';
import 'package:ar_rahman/app/utility/text_style/textstyle.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
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

    body:  Responsive(
          mobile:  BackroundScreen(
            BackroundColor: controller.isDarkMode.value?Colors.black87 : Colors.white,
            body: OrientationBuilder(
              builder: (context, orientation) =>
              orientation == Orientation.portrait
                  ? buildPortrait(context,controller)
                  : buildLandscape(context,controller),
            ),
          ), tablet:  OrientationBuilder(
          builder: (context, orientation) =>
          orientation == Orientation.portrait
              ? buildPortrait(context,controller)
              : buildLandscape(context,controller),
        ), desktop:  OrientationBuilder(
          builder: (context, orientation) =>
          orientation == Orientation.portrait
              ? buildPortrait(context,controller)
              : buildLandscape(context,controller),
        ),



        ),

    );

    // Future setPortrait() async => await SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    // Future setLandscape() async => await SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.landscapeRight,
    // ]);
    // Future setPortraitAndLandscape() =>
    //     SystemChrome.setPreferredOrientations(DeviceOrientation.values);



  }

}
Widget buildPortrait(context,controller) => ListView(
  children: [
    BodyOne(context,controller),
    const SizedBox(height: 16),
   Container(),
  ],
);
Widget buildLandscape(context,controller) => Row(

  children: [
    Expanded(
        flex: 1,
        child: BodyOne(context,controller)),
    SizedBox(width: 16),
    Expanded(
      flex: 1,
     child: Container(),

    ),
  ],
);


Widget BodyOne(context,controller) {
  final width = MediaQuery.sizeOf(context).width;
  return  Padding(
    padding: const EdgeInsets.only(top: 15,left: 12,right: 12),
    child: Column(
      children: [
        // CoustomAppbar(context,controller),
        SizedBox(height: 20.h,),
        Text(
          AppString.hey,
          style: googlefonts().textRegular16_W6_Style(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            fontSize: Responsive.isMobile(context)?width/30:width/70,
            color: Colors.black
          ),
        ),
        SizedBox(height: 10.h,),
        Text(
          AppString.myname,
          style: googlefonts().textRegular18_B_Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: Responsive.isMobile(context)?width/20:width/70,
            color: Colors.black
          ),
        ),
        SizedBox(height: 10.h,),
        Text(
          AppString.developerpart,
          style: googlefonts().textRegular16_W6_Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: Responsive.isMobile(context)?width/25:width/70,
            color: Colors.black
          ),
        ),
        SizedBox(height: 10.h,),
        Text(
          AppString.shortdescription,
          style: googlefonts().textRegular14_W5Style(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: Responsive.isMobile(context)?width/35:width/70,
            color: Colors.black
          ),
        ),


      ],
    ),
  );
  }



// Widget buildText(context,controller) => Column(
//   children: [
//     // CoustomAppbar(context,controller),
//     Text(
//       'John Doe',
//       style: TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 32,
//         color: Colors.black,
//       ),
//     ),
//     const SizedBox(height: 16),
//     Text(
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
//       style: TextStyle(fontSize: 18, color: Colors.black),
//     ),
//     SizedBox(height: 16),
//     Container(
//       height: 400,
//       width: double.infinity,
//       child: Stack(
//         children: [
//           GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 crossAxisSpacing: 5,
//                 mainAxisSpacing: 5),
//             itemCount: 10,
//             itemBuilder: (context, index) {
//               return Container(
//                 height: 300,
//                 width: double.infinity,
//                 child: Image.asset('assets/apple.jpg'),
//               );
//             },
//           ),
//         ],
//       ),
//     ),
//   ],
// );

Widget CoustomAppbar(context,controller){

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


  );
}