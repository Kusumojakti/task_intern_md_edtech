import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final step = controller.step.value;

        return GestureDetector(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            color: step == 2 ? Colors.yellow : Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: 1.0,
                child: Image.asset(
                  "assets/images/logo-us-header.png",
                  width: Get.width * 0.7,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
