import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WgArticles extends StatelessWidget {
  final String title;
  final String tanggal;
  final String waktu;
  const WgArticles({
    super.key,
    required this.title,
    required this.tanggal,
    required this.waktu,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffffffff),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                "assets/images/meetingroom.jpg",
                width: 203,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: 160,
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF404040),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 13),
                  Text(
                    "$tanggal $waktu",
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xFF404040),
                    ),
                    textAlign: TextAlign.start,
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
