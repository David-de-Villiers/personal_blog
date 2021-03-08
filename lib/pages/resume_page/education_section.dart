import 'package:flutter/material.dart';
import 'package:personal_blog/pages/resume_page/info_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({
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
          child: Text("Education", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 20 : 28)),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
        InfoTile(
            icon: Icon(Icons.school_outlined, color: Colors.black),
            title: "Pretoria Boys' High School",
            children: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text("Subjects - 7 distinctions",
                          style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20)),
                    ),
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("- Afrikaans *", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- English *", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Mathematics *", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Physical Sciences *", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Accounting *", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- French *", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Life Orientation *", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- AP Mathematics", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Cambridge A-Level Mathematics", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
        InfoTile(
            icon: Icon(Icons.school_outlined, color: Colors.black),
            title: "University of Pretoria (2022)",
            children: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text("Computer Engineering - Selected Subjects",
                          style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20)),
                    ),
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mathematics and Related Subjects", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20, fontWeight: FontWeight.bold)),
                          Text("Calculus I & II", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Mathematics I & II", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Differential Equations", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Numerical Methods", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Engineering Statistics", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Physics", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),

                          Text("Electrical and Electronic Engineering", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20, fontWeight: FontWeight.bold)),
                          Text("Electricity and Electronics", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Electrical Engineering", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Linear Systems", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),

                          Text("Computer Science and Related Subjects", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20, fontWeight: FontWeight.bold)),
                          Text("Imperative Programming", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Program Design", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Operating Systems", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("Data Structures and Algorithms", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
      ],
    );
  }
}
