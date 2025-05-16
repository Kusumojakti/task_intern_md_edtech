import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller.onBoardController,
              itemCount: controller.onBoardingData.length,
              onPageChanged: (index) {
                controller.currentPages.value = index;
              },
              itemBuilder: (context, index) {
                final data = controller.onBoardingData[index];
                return Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      Image.asset(data['images']!),
                      const SizedBox(height: 24),
                      Text(
                        data['title']!,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                        child: Text(
                          data['desc']!,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            fontSize: 16,
                            color: const Color(0xFF757575),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(controller.onBoardingData.length, (
                index,
              ) {
                final isActive = controller.currentPages.value == index;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  width: isActive ? 24 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color:
                        isActive
                            ? const Color(0xFFFFD700)
                            // ignore: deprecated_member_use
                            : const Color(0xFFFFD700).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                );
              }),
            );
          }),

          const SizedBox(height: 24),

          Obx(() {
            final buttonText =
                controller.onBoardingData[controller
                    .currentPages
                    .value]["button"]!;
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: Get.width,
                height: 56,
                child: TextButton(
                  onPressed: controller.nextPages,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD700),
                  ),
                  child: Text(
                    buttonText,
                    style: GoogleFonts.urbanist(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
