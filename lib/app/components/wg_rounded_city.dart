import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_intern_md_edtech/app/modules/city_locations/views/city_locations_view.dart';

class WgRoundedCity extends StatelessWidget {
  final String images;
  final String title;
  const WgRoundedCity({super.key, required this.images, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => CityLocationsView(title));
      },
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                images,
                fit: BoxFit.cover,
                width: 64,
                height: 64,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.urbanist(
                color: Color(0xFF757575),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
