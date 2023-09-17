import 'package:ar_rahman/app/core/app_image/app_images.dart';
import 'package:ar_rahman/app/core/app_string/app_string.dart';
import 'package:ar_rahman/app/utility/text_style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/shape/gf_icon_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:lottie/lottie.dart';

import '../../../coustom_widget/backround_screen/backround_screen.dart';
import '../../../coustom_widget/coustom_appbar/coustom_app_bar.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackroundScreen(
      body: Column(
        children: [
          CustomAppBar(),
          _BodyOne(),
        ],
      ),
    );
  }
}

Widget _BodyOne() {
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
                    height: 10,
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
