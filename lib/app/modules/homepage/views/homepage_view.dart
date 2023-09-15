import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
        ],
      ),
    );
  }
}
