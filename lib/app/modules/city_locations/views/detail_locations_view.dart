import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:task_intern_md_edtech/app/modules/city_locations/controllers/city_locations_controller.dart';

class DetailLocationsView extends StatelessWidget {
  const DetailLocationsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CityLocationsController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/apartment.jpg",
                  width: Get.width,
                  height: Get.height * 0.45,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: GestureDetector(
                    onTap: () => Get.back(),
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.4),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 40,
                  right: 72,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.4),
                    child: Icon(
                      Icons.bookmark_add_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),

                Positioned(
                  top: 40,
                  right: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.4),
                    child: Icon(Icons.send, color: Colors.white),
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Treasury Tower",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.place_outlined, color: Color(0xFF007ACC)),
                      Flexible(
                        child: Text(
                          "Jl. Jend Sudirman - No.25 Medan",
                          style: GoogleFonts.urbanist(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF007ACC),
                            letterSpacing: 0.25,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Color(0xFFF7B200)),
                          SizedBox(width: 4),
                          SizedBox(
                            child: Text(
                              "4.9",
                              style: GoogleFonts.urbanist(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF404040),
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Text(
                          "1.2k Ulasan",
                          style: GoogleFonts.urbanist(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF007ACC),
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 24,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE2F1E5),
                          border: Border.all(
                            color: Color(0xFF12A427),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: SizedBox(
                          width: 94,
                          height: 29,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(29),
                              ),
                            ),
                            child: Text(
                              "Available",
                              style: GoogleFonts.urbanist(
                                fontSize: 16,
                                color: Color(0xFF12A427),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Icon(Icons.route_rounded, color: Color(0xFF404040)),
                          SizedBox(width: 4),
                          Text(
                            "1.4 km",
                            style: GoogleFonts.urbanist(
                              color: Color(0xFF404040),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.access_time, color: Color(0xFF404040)),
                          SizedBox(width: 4),
                          Text(
                            "7 mins",
                            style: GoogleFonts.urbanist(
                              color: Color(0xFF404040),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(color: Color(0xFFBFBFBF), thickness: 0.8),
                  SizedBox(height: 10),
                  Text(
                    "Tentang Ruangan",
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF404040),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 8),
                  ReadMoreText(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo, dolorum et esse vitae nam ut at! Odio aspernatur quo sit labore repudiandae sequi laudantium odit tenetur assumenda? Incidunt enim eveniet doloribus voluptates provident! Nostrum pariatur quibusdam animi magni facere eligendi rerum est, a aut veniam cumque esse aspernatur odio tempore ullam alias obcaecati fugiat, numquam ratione. Dolor dignissimos optio provident eveniet quaerat labore praesentium voluptatem adipisci, sint molestiae eos illum. ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Selengkapnya',
                    trimExpandedText: 'Lebih sedikit',
                    moreStyle: GoogleFonts.urbanist(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                    lessStyle: GoogleFonts.urbanist(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                    style: GoogleFonts.urbanist(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF404040),
                    ),
                  ),
                  SizedBox(height: 16),
                  Card(
                    elevation: 0,
                    color: Colors.transparent,
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Color(0xFFB4B4B4), width: 1),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Parkir",
                                style: GoogleFonts.urbanist(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF404040),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              Text(
                                "Gratis",
                                style: GoogleFonts.urbanist(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF757575),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                          SizedBox(height: 11),
                          Divider(height: 1),
                          SizedBox(height: 11),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Biaya",
                                style: GoogleFonts.urbanist(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF404040),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              Text(
                                "Pemesanan Online",
                                style: GoogleFonts.urbanist(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF757575),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Gambar Ruangan",
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF404040),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 16),
                  Obx(() {
                    final imgs = controller.images;
                    return SizedBox(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imgs.length > 4 ? 4 : imgs.length,
                        itemBuilder: (context, index) {
                          bool isLastVisible = index == 3 && imgs.length > 4;
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    imgs[index],
                                    width: 100,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                if (isLastVisible)
                                  Container(
                                    width: 100,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+${imgs.length - 4}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }),
                  SizedBox(height: 10),
                  Text(
                    "Lokasi",
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF404040),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 8),
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(width: 1, color: Color(0xFFDDE5E9)),
                    ),
                    child: Container(
                      height: 200,
                      width: Get.width,
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          children: [
                            FlutterMap(
                              options: MapOptions(
                                initialCenter: controller.mapCenter.value,
                                initialZoom: 13.0,
                              ),
                              children: [
                                TileLayer(
                                  urlTemplate:
                                      "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                                ),
                                Obx(
                                  () => MarkerLayer(
                                    markers: [
                                      Marker(
                                        point: controller.mapCenter.value,
                                        width: 40,
                                        height: 40,
                                        child: const Icon(
                                          Icons.location_on,
                                          color: Colors.red,
                                          size: 40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 56,
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFFFFD700),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Pesan Sekarang",
              style: GoogleFonts.urbanist(
                color: Color(0xFF1C1C1C),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
