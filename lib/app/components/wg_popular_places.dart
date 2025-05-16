import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WgPopularPlaces extends StatelessWidget {
  const WgPopularPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 138,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/apartment.jpg",
              width: 155,
              height: 138,
              fit: BoxFit.cover,
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 82,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black54],
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 10,
              left: 12,
              child: Text(
                "Burz@ Tower",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
