import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class WgBottomBar extends StatelessWidget {
  String title;
  String icon;
  int indexValue;
  int index;
  Function tap;

  WgBottomBar({
    super.key,
    required this.title,
    required this.icon,
    required this.indexValue,
    required this.index,
    required this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: InkWell(
        onTap: tap as void Function()?,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon.isNotEmpty
                ? ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    indexValue == index ? Color(0xFFFFD700) : Color(0xFFBFBFBF),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset(icon, height: 24, width: 24),
                )
                : const SizedBox(height: 24, width: 24),
            const SizedBox(height: 4),
            Text(
              title,
              style: GoogleFonts.dmSans(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color:
                    indexValue == index ? Color(0xFFFFD700) : Color(0xFFBFBFBF),
                letterSpacing: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
