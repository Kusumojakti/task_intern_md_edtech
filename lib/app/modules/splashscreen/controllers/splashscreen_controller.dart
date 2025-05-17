import 'dart:async';

import 'package:get/get.dart';
import 'package:task_intern_md_edtech/app/routes/app_pages.dart';

class SplashscreenController extends GetxController {
  var step = 0.obs;
  late Timer _timer;

  void onInit() {
    super.onInit();
    _startAutoStep();
  }

  void _startAutoStep() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (step.value < 2) {
        step.value++;
      } else {
        timer.cancel();
        Get.offAllNamed(Routes.ONBOARDING);
      }
    });
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}
