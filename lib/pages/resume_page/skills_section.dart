import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
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
          child: Text("Skills", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 20 : 28)),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
        ListTile(
          title: Text("Android + iOS app development", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("Python", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("Java", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("C++", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("Dart + Flutter", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("LTSpice", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("VHDL", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("MATLAB", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        ListTile(
          title: Text("Firestore Cloud Database", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
      ],
    );
  }
}
