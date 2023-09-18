import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../coustom_widget/coustom_appbar/navbar.dart';

class HomepageController extends GetxController {

 final  collapsableHeight = 0.0.obs;

  Color  selected = Color(0xffffffff);
  Color notSelected = Color(0xafffffff);

  List<Widget> navBarItems = [
    NavBarItem(
      text: 'Home',
    ),
    NavBarItem(
      text: 'About',
    ),
    NavBarItem(
      text: 'Skills',
    ),
    NavBarItem(
      text: 'My Work',
    ),
    NavBarItem(
      text: 'My Work',
    ),
    NavBarItem(
      text: 'Contact',
    ),
  ];


   screensize(){
       if (collapsableHeight.value == 0.0) {
           collapsableHeight.value = 240;
       } else if (collapsableHeight.value == 240.0) {
         collapsableHeight.value = 0;

     };
  }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {

    super.onClose();
  }


}
