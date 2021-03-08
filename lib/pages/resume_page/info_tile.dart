import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    Key key,
    @required this.title,
    @required this.children,
    @required this.icon
  }) : super(key: key);

  final String title;
  final Align children;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width <= 768 ? true : false;
    return Theme(
      data: ThemeData(
        accentColor: Colors.black,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        dividerColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ExpansionTile(
        leading: icon,
        title: Text(title, style: GoogleFonts.karma(fontSize: isMobile ? 18 : 24)),
        children: [
          children,
        ],
      ),
    );
  }
}
