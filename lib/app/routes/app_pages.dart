
import 'package:get/get.dart';

import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.homepage;

  static final routes = [
    GetPage(
      name: _Paths.homepage,
      page: () =>  HomepageView(),
      binding: HomepageBinding(),
    ),

  ];
}
