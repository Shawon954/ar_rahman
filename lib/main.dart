import 'package:ar_rahman/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'app/modules/homepage/bindings/homepage_binding.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
        return GetMaterialApp(
          title: 'ABDUR RAHMAN',
          debugShowCheckedModeBanner: false,
          initialRoute: '/homepage',
          initialBinding: HomepageBinding(),
          getPages: AppPages.routes,


        );
      },
    ),
  );
}


