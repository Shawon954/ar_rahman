
import 'package:get/get.dart';



class HomepageController extends GetxController {


  var isDarkMode = false.obs;

   toggleDarkMode() {
    isDarkMode.value = !isDarkMode.value;
  }




  @override
  void onInit() {

    toggleDarkMode();

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
