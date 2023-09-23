
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomepageController extends GetxController {

  final isPortrait = true.obs;

  var isDarkMode = true.obs;


   toggleDarkMode() {
    isDarkMode.value = !isDarkMode.value;
  }




  @override
  void onInit() {

    toggleDarkMode();
    _updateOrientation();


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


  void _updateOrientation() {
    isPortrait.value = Get.mediaQuery.orientation == Orientation.portrait;
  }


}
