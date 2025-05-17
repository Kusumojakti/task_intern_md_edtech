import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:task_intern_md_edtech/app/modules/onboarding/views/loading_view.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController
  final onBoardController = PageController();
  var currentPages = 0.obs;

  final List<Map<String, String>> onBoardingData = [
    {
      "images": "assets/images/onboarding_1.png",
      "title": "Terhubung. Berkembang. Bersama",
      "desc":
          "Mewakili semangat kolaborasi dan pertumbuhan komunitas profesional di Indonesia.",
      "button": "Selanjutnya",
    },
    {
      "images": "assets/images/onboarding_2.png",
      "title": "Ruangmu. Gayamu. Bisnismu.",
      "desc":
          "Menekankan fleksibilitas dan personalisasi yang ditawarkan oleh UnionSpace.",
      "button": "Selanjutnya",
    },
    {
      "images": "assets/images/onboarding_3.png",
      "title": "Mulai Hari Produktifmu Sekarang!",
      "desc":
          "Pendek, positif, dan langsung mengajak pengguna untuk mulai beraktivitas. Daftar dan Jelajahi Space Sekarang!",
      "button": "Mulai",
    },
  ];

  void nextPages() {
    if (currentPages.value < onBoardingData.length - 1) {
      onBoardController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.off(() => LoadingView());
    }
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
    onBoardController.dispose();
    super.onClose();
  }
}
