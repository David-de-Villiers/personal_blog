import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_blog/pages/blog_page/blog_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:personal_blog/pages/read_post_page/image_viewer.dart';


class ReadPostPage extends StatelessWidget {
  const ReadPostPage({
    Key key,
    @required this.width,
    @required this.document,
  }) : super(key: key);

  final double width;
  final DocumentSnapshot document;

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isMobile = width <= 768 ? true : false;
    CarouselController buttonCarouselController = CarouselController();
    bool renderImage = false;
    List<String> imageList = [];
    List<Widget> imgSliders = [];

    if (document.data().containsKey("images")) {
      renderImage = true;
      for (var item in document["images"])
        imageList.add(item.toString());

      imgSliders = imageList.map((item) => Container(
        margin: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 48),
        decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 4.0)),
        padding: EdgeInsets.all(4),
        child: Image.network(item, fit: BoxFit.fitHeight),
      )).toList();
    }
    else
      renderImage = false;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: isMobile ? Container() : Text("Read Post", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: 24)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: SizedBox(width: 0),
        actions: [
          FlatButton.icon(
            icon: Icon(Icons.clear),
            label: Text("Exit", style: GoogleFonts.cutiveMono(color: Colors.black, fontSize: 20)),
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(height: 2, color: Colors.black, thickness: 1),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  width: isMobile ? width * 0.95 : (width > 800 ? 800 : width * 0.8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 8),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              document["title"],
                              style: GoogleFonts.cutiveMono(fontSize: isMobile ? 26 : 32),
                              overflow: TextOverflow.ellipsis)
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              document["date"],
                              style: GoogleFonts.cutiveMono(fontSize: isMobile ? 14 : 16),
                              overflow: TextOverflow.ellipsis)
                      ),
                      Divider(
                        thickness: 1,
                        height: 24,
                        color: Colors.black,
                      ),
                      SizedBox(height: 8),
                      renderImage
                          ? ImageViewer(
                              controller: buttonCarouselController,
                              width: width,
                              height: height,
                              imgSliders: imgSliders)
                          : Container(),
                      Text(
                        document["content"],
                        style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18),
//                      textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}



