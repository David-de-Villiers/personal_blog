import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_blog/pages/contact_page/contact_page.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width <= 768 ? true : false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
            alignment: isMobile ? Alignment.topCenter : Alignment.topLeft,
            child: Text("I am David de Villiers", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 20 : 48))
        ),
        SizedBox(height: isMobile ? 8 : 16),
        Align(
            alignment: isMobile ? Alignment.topCenter : Alignment.topLeft,
            child: Text("a Computer Engineering Student", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 28))
        ),
        Align(
            alignment: isMobile ? Alignment.topCenter : Alignment.topLeft,
            child: Text("at the University of Pretoria", style: GoogleFonts.karma(fontSize: isMobile ? 16 : 28))
        ),
        SizedBox(height: isMobile ? 8 : 32),
        Align(
          alignment: isMobile ? Alignment.topCenter : Alignment.topLeft,
          child: FlatButton(
            child: Padding(
              padding: isMobile
                  ? const EdgeInsets.symmetric(vertical: 8, horizontal: 8)
                  : const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Text("Contact Me", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 16 : 32)),
            ),
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Colors.black,
                )
            ),
            onPressed: () => Navigator.of(context).pushNamed(ContactPage.route),
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
