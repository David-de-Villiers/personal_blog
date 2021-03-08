import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_blog/pages/read_post_page/read_post_page.dart';

class BlogPostCard extends StatelessWidget {
  const BlogPostCard({
    Key key,
    @required this.width,
    @required this.document,
  }) : super(key: key);

  final double width;
  final DocumentSnapshot document;

  @override
  Widget build(BuildContext context) {
    final isMobile = width <= 768 ? true : false;
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        width: isMobile ? width * 0.95 : (width > 800 ? 800 : width * 0.8),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 3, color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 8),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                        document["title"],
                        style: GoogleFonts.cutiveMono(fontSize: isMobile ? 24 : 28),
                        overflow: TextOverflow.ellipsis),
                  )
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                        document["date"],
                        style: GoogleFonts.cutiveMono(fontSize: isMobile ? 12 : 14),
                        overflow: TextOverflow.ellipsis),
                  )
              ),
              Divider(
                thickness: 1,
                height: 16,
                color: Colors.black,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 8.0),
                    child: Text(
                      document["content"],
                      style: GoogleFonts.karma(fontSize: isMobile ? 16 : 18),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 10,
                    ),
                  )
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton.icon(
                    icon: Icon(Icons.arrow_forward_ios, size: isMobile ? 14 : 20),
                    label: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                      child: Text("Read Post", style: GoogleFonts.cutiveMono(fontSize: isMobile ? 18 : 24)),
                    ),
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReadPostPage(width: width, document: document))
                    ),
                  ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
