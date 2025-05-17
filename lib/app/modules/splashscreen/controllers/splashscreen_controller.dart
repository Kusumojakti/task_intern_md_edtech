import 'package:get/get.dart';
import 'package:task_intern_md_edtech/app/routes/app_pages.dart';

class SplashscreenController extends GetxController {
  final count = 0.obs;
  var step = 0.obs;

  void nextStep() {
    if (step.value < 2) {
      step.value++;
    } else {
      Get.offAllNamed(Routes.ONBOARDING);
    }
  }
}
