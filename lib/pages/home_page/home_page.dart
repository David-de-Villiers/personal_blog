import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_blog/pages/blog_page/blog_page.dart';
import 'package:personal_blog/pages/home_page/home_info.dart';
import 'package:personal_blog/pages/home_page/footer.dart';
import 'package:personal_blog/pages/resume_page/resume_page.dart';

class HomePage extends StatelessWidget {
  static const String route = "/home";
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isMobile = width <= 768 ? true : false;
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          title: isMobile ? Container() : Text("Home", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: 24)),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: SizedBox(width: 0),
          actions: [
            FlatButton.icon(
              icon: Icon(Icons.book_outlined),
              label: Text("Blog", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: isMobile ? 16 : 20)),
              onPressed: () => Navigator.of(context).pushNamed(BlogPage.route),
              color: Colors.white,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            FlatButton.icon(
              icon: Icon(Icons.star_border),
              label: Text("Resume", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: isMobile ? 16 : 20)),
              onPressed: () => Navigator.of(context).pushNamed(ResumePage.route),
              color: Colors.white,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            SizedBox(width: width * 0.08),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Divider(height: 2, color: Colors.black, thickness: 1),
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: isMobile ? EdgeInsets.symmetric(horizontal: width * 0.04) : EdgeInsets.all(0),
                    height: height * 0.85,
                    child: isMobile
                        ? Column(children: [
                      Image.asset("assets/profile_pic.png", width: width * 0.75),
                      HomeInfo(),
                    ])
                        : Row(
                      children: [
                        Flexible(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(left: width * 0.06),
                            child: HomeInfo(),
                          ),
                        ),
                        Flexible(
                            flex: 2,
                            child: Image.asset("assets/profile_pic.png")),
                      ],
                    ),
                  ),
                  isMobile ? Container() : Spacer(),
                  Footer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


