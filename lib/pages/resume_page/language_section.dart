import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width <= 768 ? true : false;
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text("Languages", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 20 : 28)),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
        ListTile(
          title: Text("Afrikaans", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          subtitle: Text("Native Proficiency", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("English", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          subtitle: Text("Native Proficiency", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("French", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          subtitle: Text("Intermediate Proficiency", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
      ],
    );
  }
}
