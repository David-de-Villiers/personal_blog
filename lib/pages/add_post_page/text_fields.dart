import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    Key key,
    @required this.width,
    @required this.titleController,
  }) : super(key: key);

  final double width;
  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width > 720 ? 720 : width * 0.6,
        child: TextFormField(
          controller: titleController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
              hintText: "Title"),
        ),
    );
  }
}

class DateTextField extends StatelessWidget {
  const DateTextField({
    Key key,
    @required this.width,
    @required this.dateController,
  }) : super(key: key);

  final double width;
  final TextEditingController dateController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width > 720 ? 720 : width * 0.6,
        child: TextFormField(
          controller: dateController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
              hintText: "Date"),
        )
    );
  }
}

class ContentTextField extends StatelessWidget {
  const ContentTextField({
    Key key,
    @required this.width,
    @required this.contentController,
  }) : super(key: key);

  final double width;
  final TextEditingController contentController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width > 720 ? 720 : width * 0.6,
        child: TextFormField(
          controller: contentController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
              hintText: "Content"),
          maxLines: 20,
        )
    );
  }
}