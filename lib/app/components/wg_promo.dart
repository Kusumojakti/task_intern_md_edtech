import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class WgPromo extends StatelessWidget {
  const WgPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "assets/images/image 11.png",
              width: Get.width,
              height: 186,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
