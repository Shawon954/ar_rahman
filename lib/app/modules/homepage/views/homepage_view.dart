import 'package:ar_rahman/app/core/app_image/app_images.dart';
import 'package:ar_rahman/app/core/app_string/app_string.dart';
import 'package:ar_rahman/app/responsive/responsive_screen.dart';
import 'package:ar_rahman/app/utility/text_style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import '../../../coustom_widget/backround_screen/backround_screen.dart';
import '../../../coustom_widget/button/button.dart';
import '../../../coustom_widget/coustom_appbar/button_navbar.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return BackroundScreen(
        body: Responsive(
            mobile: Stack(
              children: [
                   Container(
                   color: Colors.white,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [

                       mobileandtabbodyOne(),

              ],
             ),
            ),
              AnimatedContainer(
            margin: EdgeInsets.only(top: 79.0),
            duration: Duration(milliseconds: 375),
            curve: Curves.ease,
            height: (width < 800.0) ? controller.collapsableHeight.value : 0.0,
            width: double.infinity,
            color: Color(0xff121212),
            child: SingleChildScrollView(
              child: Column(
                children: controller.navBarItems,
              ),
            ),
          ),
          Container(
            color: Color(0xff121212),
            height: 80.0,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NavBar Icon',
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context)?width/25:width/40,
                    color: Color(0xffffffff),
                  ),
                ),
                LayoutBuilder(builder: (context, constraints) {
                  if (width < 800.0) {
                    return NavBarButton(
                      onPressed: () => controller.screensize(),
                    );
                  } else {
                    return Row(
                      children: controller.navBarItems,
                    );
                  }
                }),
              ],
            ),
          ),
        ],
      ),
           tablet:Stack(
             children: [
               Container(
                 color: Colors.white,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    mobileandtabbodyOne(),
                   ],
                 ),
               ),
               AnimatedContainer(
                 margin: EdgeInsets.only(top: 79.0),
                 duration: Duration(milliseconds: 375),
                 curve: Curves.ease,
                 height: (width < 800.0) ? controller.collapsableHeight.value : 0.0,
                 width: double.infinity,
                 color: Color(0xff121212),
                 child: SingleChildScrollView(
                   child: Column(
                     children: controller.navBarItems,
                   ),
                 ),
               ),
               Container(
                 color: Color(0xff121212),
                 height: 80.0,
                 padding: EdgeInsets.symmetric(horizontal: 24.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       'NavBar',
                       style: TextStyle(
                         fontSize: 22.0,
                         color: Color(0xffffffff),
                       ),
                     ),
                     LayoutBuilder(builder: (context, constraints) {
                       if (width < 800.0) {
                         return NavBarButton(
                           onPressed: () => controller.screensize(),
                         );
                       } else {
                         return Row(
                           children: controller.navBarItems,
                         );
                       }
                     }),
                   ],
                 ),
               ),
             ],
           ),
           desktop: Stack(
             children: [
               Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [bodyOne()],
            ),
          ),
          AnimatedContainer(
            margin: EdgeInsets.only(top: 79.0),
            duration: Duration(milliseconds: 375),
            curve: Curves.ease,
            height: (width < 800.0) ? controller.collapsableHeight.value : 0.0,
            width: double.infinity,
            color: Color(0xff121212),
            child: SingleChildScrollView(
              child: Column(
                children: controller.navBarItems,
              ),
            ),
          ),
          Container(
            color: Color(0xff121212),
            height: 80.0,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NavBar',
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context)?width/10:width/70,
                    color: Color(0xffffffff),
                  ),
                ),
                LayoutBuilder(builder: (context, constraints) {
                  if (width < 800.0) {
                    return NavBarButton(
                      onPressed: () => controller.screensize(),
                    );
                  } else {
                    return Row(
                      children: controller.navBarItems,
                    );
                  }
                }),
              ],
            ),
          ),
        ],
      ),
    )

        // SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Column(
        //     children: [
        //       CustomAppBar(),
        //       _BodyOne(),
        //       SizedBox(height: 5.h,),
        //       _BodyTwo(),
        //       SizedBox(height: 10.h,),
        //     ],
        //   ),
        // ),
        );
  }
}
Widget mobileandtabbodyOne() {
  return Container(
    height: 500.h,
    width: double.infinity,
    child: Column(
      children: [
        Padding(
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
        ),
        SizedBox(height: 5.h,),
        Column(
          children: [
            Lottie.asset(AppImage.laptopimage,width: 200.w),
          ],
        )
      ],
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
