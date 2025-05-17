import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class WgCardBanner extends StatelessWidget {
  final String images;
  const WgCardBanner({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              images,
              width: Get.width,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
