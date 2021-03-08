import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'info_tile.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({
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
          child: Text("Work Experience", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 20 : 28)),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
        InfoTile(
            title: "Ario - Vacation Work",
            children: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text("Technologies used", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 20)),
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
                          Text("More information about my work experience can be found at my blog", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- React Native App Development", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Javascript + HTML", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Modbus RS458 Protocol", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Websocket Protocol", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          Text("- Python Development", style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18)),
                          // TODO: ADD CONTACT PERSON AND URL
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            icon: Icon(Icons.work_outline, color: Colors.black)),
        Divider(height: 16, color: Colors.black, thickness: 1),
      ],
    );
  }
}
