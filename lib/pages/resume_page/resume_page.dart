import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_blog/pages/blog_page/blog_page.dart';
import 'package:personal_blog/pages/home_page/home_page.dart';
import 'package:personal_blog/pages/resume_page/education_section.dart';
import 'package:personal_blog/pages/resume_page/language_section.dart';
import 'package:personal_blog/pages/resume_page/resume_header.dart';
import 'package:personal_blog/pages/resume_page/volunteer_section.dart';
import 'package:personal_blog/pages/resume_page/work_section.dart';
import 'package:personal_blog/pages/resume_page/personal_projects.dart';
import 'package:personal_blog/pages/resume_page/skills_section.dart';
import 'package:personal_blog/pages/resume_page/certificate_section.dart';
import 'package:personal_blog/pages/resume_page/achievement_section.dart';

class ResumePage extends StatefulWidget {
  static const String route = "/resume";
  @override
  _ResumePageState createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width <= 768 ? true : false;
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: isMobile ? Container() : Text("Resume", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: 24)),
          centerTitle: false,
          leading: Container(),
          actions: [
            FlatButton.icon(
              icon: Icon(Icons.home_outlined),
              label: Text("Home", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: 20)),
              onPressed: () => Navigator.of(context).pushNamed(HomePage.route),
              color: Colors.white,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            FlatButton.icon(
              icon: Icon(Icons.book_outlined),
              label: Text("Blog", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: 20)),
              onPressed: () => Navigator.of(context).pushNamed(BlogPage.route),
              color: Colors.white,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            SizedBox(width: width * 0.08),
          ],
        ),
        body: Column(
          children: [
            Divider(height: 2, color: Colors.black, thickness: 1),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Container(
                    width: isMobile ? width * 0.95 : (width > 800 ? 800 : width * 0.8),
                    child: Column(
                      children: [
                        ResumeHeader(),
                        EducationSection(),
                        WorkSection(),
                        PersonalProjects(),
                        VolunteerSection(),
                        SkillsSection(),
                        AchievementSection(),
                        CertificateSection(),
                        LanguageSection(),
                        SizedBox(height: 64),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}











