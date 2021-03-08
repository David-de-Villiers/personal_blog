import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_blog/pages/add_post_page/add_post_page.dart';
import 'package:personal_blog/pages/blog_page/blog_post_card.dart';
import 'package:personal_blog/pages/home_page/home_page.dart';
import 'package:personal_blog/pages/resume_page/resume_page.dart';

class BlogPage extends StatefulWidget {
  static const String route = "/blog";
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {

  @override
  Widget build(BuildContext context) {
    final firestoreInstance = FirebaseFirestore.instance;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isMobile = width <= 768 ? true : false;
    bool showButton = FirebaseAuth.instance.currentUser != null ? false : true;
//    print(showButton.toString());
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: isMobile ? Container() : Text("Blog", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: 24)),
          centerTitle: false,
          leading: Container(),
          actions: [
            FlatButton.icon(
              icon: Icon(Icons.home_outlined),
              label: Text("Home", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: isMobile ? 16 : 20)),
              onPressed: () => Navigator.of(context).pushNamed(HomePage.route),
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
            showButton ?
                Container() :
                FlatButton.icon(
                  icon: Icon(Icons.add),
                  label: Text("Add Post", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: 20)),
                  onPressed: () => Navigator.of(context).pushNamed(AddPostPage.route),
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
              child: StreamBuilder(
                stream: firestoreInstance.collection("Posts").orderBy("id", descending: true).snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData)
                    return Center(child: CircularProgressIndicator());
                  else {
                    return ListView(
                      children: snapshot.data.docs.map((document) {
                        return BlogPostCard(width: width, document: document);
                      }).toList(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

