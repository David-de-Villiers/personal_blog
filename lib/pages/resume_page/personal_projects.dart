import 'package:flutter/material.dart';
import 'package:personal_blog/pages/resume_page/info_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalProjects extends StatelessWidget {
  const PersonalProjects({
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
          child: Text("Personal Projects", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 20 : 28)),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
        InfoTile(
            title: "Textbooks2 - Android Application",
            children: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text("A marketplace for students to buy and sell 2nd hand textbooks (01/2018-01/2019)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20)),
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
                          Text("- Developed using Java", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- TODO: ADD URL", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          // TODO: ADD URL
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            icon: Icon(Icons.smartphone_outlined, color: Colors.black)),
        InfoTile(
            title: "SASSH Congress - iOS + Android Application",
            children: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text("Mobile application for the South African Society for Surgery of the Hand (09/2019-01/2020)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20)),
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
                          Text("- Developed using Dart and Flutter", style: GoogleFonts.karma(fontSize: 18)),
                          Text("- TODO: ADD URL", style: GoogleFonts.karma(fontSize: 18)),
                          // TODO: ADD URL
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            icon: Icon(Icons.smartphone_outlined, color: Colors.black)),
        InfoTile(
            title: "Permanent Magnet DC Motor",
            children: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text("Personal project to learn about DC Motors (03/2020 - 04/2020)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20)),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            icon: Icon(Icons.settings_outlined, color: Colors.black)),
        InfoTile(
            title: "French Language Learning - DELF B2",
            children: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text("Studying online through L'Alliance Française (Present)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20)),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            icon: Icon(Icons.translate_outlined, color: Colors.black)),
        InfoTile(
            title: "Personal Website",
            children: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text("The website you are currently browsing was developed by me (Present)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20)),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            icon: Icon(Icons.desktop_windows_outlined, color: Colors.black)),
        Divider(height: 16, color: Colors.black, thickness: 1),
      ],
    );
  }
}
