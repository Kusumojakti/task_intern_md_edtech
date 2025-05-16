import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WgRoundedCity extends StatelessWidget {
  const WgRoundedCity({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                "assets/images/bandung-indonesia-street-city.jpg",
                fit: BoxFit.cover,
                width: 64,
                height: 64,
              ),
            ),
            Text(
              "Bandung",
              style: GoogleFonts.urbanist(
                color: Color(0xFF757575),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
