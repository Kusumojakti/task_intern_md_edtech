import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final bannerControllers = PageController();
  var currentPages = 0.obs;

  final List<Map<String, String>> bannerData = [
    {"images": "assets/images/banner_1.png"},
    {"images": "assets/images/banner_1.png"},
    {"images": "assets/images/banner_1.png"},
  ];

  final List<Map<String, String>> cityData = [
    {"images": "assets/images/terdekat.png", 'title': "Terdekat"},
    {"images": "assets/images/jogja.jpg", 'title': "Yogyakarta"},
    {
      "images": "assets/images/bandung-indonesia-street-city.jpg",
      'title': "Bandung",
    },
    {"images": "assets/images/bali.jpg", 'title': "Bali"},
    {
      "images": "assets/images/bandung-indonesia-street-city.jpg",
      'title': "Medan",
    },
    {
      "images": "assets/images/bandung-indonesia-street-city.jpg",
      'title': "Surabaya",
    },
    {
      "images": "assets/images/bandung-indonesia-street-city.jpg",
      'title': "Makassar",
    },
  ];

  final List<Map<String, String>> articlesData = [
    {
      "title": "Tips Terbaik Sewa Ruang Kantor",
      "tanggal": "17 Mei 2025",
      "waktu": "6.44 AM",
    },
    {
      "title": "5 Hal yang Harus Diperhatikan Sebelum Sewa Meeting Room",
      "tanggal": "16 Mei 2025",
      "waktu": "9.15 AM",
    },
    {
      "title": "Keuntungan Menggunakan Coworking Space untuk Startup",
      "tanggal": "15 Mei 2025",
      "waktu": "8.30 AM",
    },
    {
      "title": "Kenapa Kantor Fleksibel Cocok untuk Bisnis Modern?",
      "tanggal": "14 Mei 2025",
      "waktu": "7.50 AM",
    },
    {
      "title": "Panduan Memilih Virtual Office Terpercaya",
      "tanggal": "13 Mei 2025",
      "waktu": "10.20 AM",
    },
    {
      "title": "Sewa Ruangan Harian: Solusi Efisien untuk Freelancers",
      "tanggal": "12 Mei 2025",
      "waktu": "6.44 AM",
    },
    {
      "title": "Cara Hemat Biaya Operasional dengan Kantor Bersama",
      "tanggal": "11 Mei 2025",
      "waktu": "11.00 AM",
    },
    {
      "title": "Manfaat Ruang Kreatif untuk Tim Desain dan Inovasi",
      "tanggal": "10 Mei 2025",
      "waktu": "9.45 AM",
    },
  ];

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
    super.onClose();
  }
}
