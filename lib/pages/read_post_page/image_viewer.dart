import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({
    Key key,
    @required this.controller,
    @required this.width,
    @required this.height,
    @required this.imgSliders,
  }) : super(key: key);

  final CarouselController controller;
  final double width;
  final double height;
  final List<Widget> imgSliders;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width <= 768 ? true : false;
    return Container(
      height: isMobile ? height * 0.4 : height * 0.5,
      child: Column(
        children: [
          isMobile ? Carousel(height: height, imgSliders: imgSliders, controller: controller) : Container(),
          isMobile ? SizedBox(height: 8) : Container(),
          isMobile
              ? Text("Swipe to view Images",
                  style: GoogleFonts.karma(fontSize: 14),
                  textAlign: TextAlign.center)
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlatButton(
                      child: Icon(Icons.chevron_left_outlined,
                          color: Colors.black, size: 48),
                      onPressed: () => controller.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      ),
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    Carousel(
                        height: height,
                        imgSliders: imgSliders,
                        controller: controller),
                    FlatButton(
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.black, size: 48),
                      onPressed: () => controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      ),
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                  ],
                ),
          SizedBox(height: isMobile ? 0 : 16),
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({
    Key key,
    @required this.height,
    @required this.imgSliders,
    @required this.controller,
  }) : super(key: key);

  final double height;
  final List<Widget> imgSliders;
  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      child: CarouselSlider(
        options: CarouselOptions(
          height: null, //height * 0.4,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
        ),
        items: imgSliders,
        carouselController: controller,
      ),
    );
  }
}
