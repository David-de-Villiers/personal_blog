import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AchievementSection extends StatelessWidget {
  const AchievementSection({
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
          child: Text("Achievements", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 20 : 28)),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
        ListTile(
          title: Text("Dean's Merit List", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          subtitle: Text("Academic Achievement (2019)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18)),
          leading: Icon(Icons.school_outlined, color: Colors.black),
        ),
        ListTile(
          title: Text("JSE Investment Challenge", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          subtitle: Text("Monthly Winner (June/July 2018)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18)),
          leading: Icon(Icons.show_chart, color: Colors.black),
        ),
        ListTile(
          title: Text("The Dale Carnegie Course", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          subtitle: Text("Highest Award for Achievement (2017)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18)),
          leading: Icon(Icons.star_border, color: Colors.black),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
      ],
    );
  }
}
