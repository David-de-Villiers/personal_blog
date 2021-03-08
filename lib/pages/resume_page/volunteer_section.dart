import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'info_tile.dart';

class VolunteerSection extends StatelessWidget {
  const VolunteerSection({
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
          child: Text("Volunteer Experience", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 20 : 28)),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
        InfoTile(
            title: "PEN Shelters",
            children: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text("Mobile App Developer (04/2020-05/2020)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20)),
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
                          Text("PEN provides shelters and basic needs to homeless people", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Developed the Tshwane Homelessness Forum mobile application", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Android and iOS applications created using Dart and Flutter", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Created and Maintained a Firestore Cloud Database", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          // TODO: ADD CONTACT
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            icon: Icon(Icons.card_giftcard_outlined, color: Colors.black)),
        Divider(height: 16, color: Colors.black, thickness: 1),
      ],
    );
  }
}
