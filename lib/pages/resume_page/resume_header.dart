import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeHeader extends StatelessWidget {
  const ResumeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width <= 768 ? true : false;
    return Column(
      children: [
        SizedBox(height: 32),
        Text("David de Villiers",
            style: GoogleFonts.cutiveMono(fontSize: isMobile ? 22 : 48)),
        Text("Computer Engineering Student",
            style: GoogleFonts.cutiveMono(fontSize: isMobile ? 16 : 28)),
        SizedBox(height: 24),
        Text("I am driven, motivated and ambitious. I am interested in developing technologies such as AI, Robotics, and Cyber Security with the aim of improving the world",
          style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18),
          textAlign: TextAlign.center),
        SizedBox(height: 12),
        Text("Read more in my blog!", // TODO: ADD LINK TO BLOG
          style: GoogleFonts.karma(fontSize: isMobile ? 14 : 18),
          textAlign: TextAlign.center),
        SizedBox(height: 12),
        Divider(height: 16, color: Colors.black, thickness: 1),
      ],
    );
  }
}