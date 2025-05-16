import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_intern_md_edtech/app/components/wg_articles.dart';
import 'package:task_intern_md_edtech/app/components/wg_card_banner.dart';
import 'package:task_intern_md_edtech/app/components/wg_popular_places.dart';
import 'package:task_intern_md_edtech/app/components/wg_promo.dart';
import 'package:task_intern_md_edtech/app/components/wg_rounded_city.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/home-header.png",
                    width: Get.width,
                    fit: BoxFit.fitWidth,
                  ),
                  SafeArea(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/logo-us-header.png",
                                    width: Get.width * 0.4,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Image.asset(
                                      "assets/icons/ic-communication.png",
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Column(children: [WgCardBanner()]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          child: Container(color: Color(0xFFF7F7F7)),
                        ),
                        Container(
                          width: Get.width,
                          height: 127,
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          child: Center(
                            child: SizedBox(
                              height: 90,
                              child: ListView.separated(
                                separatorBuilder:
                                    (context, index) =>
                                        const SizedBox(width: 20),
                                physics: const ClampingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return WgRoundedCity();
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          child: Container(color: Color(0xFFF7F7F7)),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Paling Sering Dikunjungi",
                                style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xFF404040),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Maksimalkan Bisnis Anda bersama Union Space",
                                style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFF757575),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height: 18),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                height: 144,
                                child: ListView.separated(
                                  separatorBuilder:
                                      (context, index) =>
                                          const SizedBox(width: 20),
                                  physics: const ClampingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return WgPopularPlaces();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          child: Container(color: Color(0xFFF7F7F7)),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Promo",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF404040),
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        "Kemudahan Dengan Promo",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF757575),
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xFFFFD700),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                height: 200,
                                child: ListView.separated(
                                  separatorBuilder:
                                      (context, index) =>
                                          const SizedBox(width: 0),
                                  physics: const ClampingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return WgPromo();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          child: Container(color: Color(0xFFF7F7F7)),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Artikel",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF404040),
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        "Kemudahan Dengan Promo",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF757575),
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xFFFFD700),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                height: Get.height * 0.36,
                                child: ListView.separated(
                                  separatorBuilder:
                                      (context, index) =>
                                          const SizedBox(width: 5),
                                  physics: const ClampingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return WgArticles();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
