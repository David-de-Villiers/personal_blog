import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CertificateSection extends StatelessWidget {
  const CertificateSection({
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
          child: Text("Certificates", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 20 : 28)),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
        ListTile(
          title: Text("Catalyst Coding Contest", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          subtitle: Text("Placed 18th (2019)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18)),
          leading: Icon(Icons.code, color: Colors.black),
        ),
        ListTile(
          title: Text("Diplome des Études - DELF A2", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          subtitle: Text("Certificate of French Proficiency (2017)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18)),
          leading: Icon(Icons.translate_outlined, color: Colors.black),
        ),
        ListTile(
          title: Text("Huawei Seeds of the Future", style: GoogleFonts.karma(fontSize: isMobile ? 18 : 20)),
          subtitle: Text("Certificate of Completion (2020)", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18)),
          leading: Icon(Icons.code, color: Colors.black),
        ),
        Divider(height: 16, color: Colors.black, thickness: 1),
      ],
    );
  }
}
