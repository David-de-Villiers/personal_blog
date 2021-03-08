import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width <= 768 ? true : false;
    return Column(
      children: [
        Text("Created by David de Villiers", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
        SizedBox(height: 4),
      ],
    );
  }
}