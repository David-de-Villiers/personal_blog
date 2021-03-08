import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_blog/pages/home_page/home_page.dart';

class ContactPage extends StatelessWidget {
  static const String route = "/contact";
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isMobile = width <= 768 ? true : false;
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          title: isMobile ? Container() : Text("Contact", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: 24)),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: SizedBox(width: 0),
          actions: [
            FlatButton.icon(
              icon: Icon(Icons.clear),
              label: Text("Exit", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: isMobile ? 16 : 20)),
              onPressed: () => Navigator.of(context).pushNamed(HomePage.route),
              color: Colors.white,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            SizedBox(width: width * 0.08),
          ],
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Divider(height: 2, color: Colors.black, thickness: 1),
              Container(
                height: height * 0.85,
                child: Column(
                  children: [
                    Image.asset("assets/profile_pic.png", height: height * 0.4),
                    SizedBox(height: 16),
                    Text("David de Villiers",
                        style: GoogleFonts.cutiveMono(fontSize: isMobile ? 24 : 48),
                        textAlign: TextAlign.center),
                    Text("Computer Engineering Student",
                        style: GoogleFonts.cutiveMono(fontSize: isMobile ? 18 : 28),
                        textAlign: TextAlign.center),
                    SizedBox(height: isMobile ? 12 : 24),
                    SelectableText("dfdv0808 at gmail.com",
                        style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18),
                        textAlign: TextAlign.center),
                    SelectableText("https://www.linkedin.com/in/david-de-villiers/",
                        style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18),
                        textAlign: TextAlign.center),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

