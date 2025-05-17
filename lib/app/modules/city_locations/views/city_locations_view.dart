import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_intern_md_edtech/app/components/wg_popular_places.dart';

import '../controllers/city_locations_controller.dart';

class CityLocationsView extends GetView<CityLocationsController> {
  final String title;
  const CityLocationsView(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade400, width: 1),
                    ),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ),

                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF404040),
                  ),
                ),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade400, width: 1),
                    ),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.edit_square, color: Color(0xFF757575)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: SizedBox(
        child: GridView.builder(
          padding: EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 159 / 140,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return WgPopularPlaces();
          },
        ),
      ),
    );
  }
}
