import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  final count = 0.obs;
  var step = 0.obs;

  void nextStep() {
    if (step.value < 2) {
      step.value++;
    } else {
      Get.offAllNamed('/onboarding');
    }
  }
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
