import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_blog/pages/add_post_page/text_fields.dart';
import 'package:personal_blog/pages/blog_page/blog_page.dart';

class BlogForm extends StatelessWidget {
  const BlogForm({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.width,
    @required this.titleController,
    @required this.contentController,
    @required this.firestoreInstance,
    @required this.dateController,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;
  final double width;
  final TextEditingController titleController;
  final TextEditingController contentController;
  final FirebaseFirestore firestoreInstance;
  final TextEditingController dateController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Divider(height: 2, color: Colors.black, thickness: 1),
          SizedBox(height: 36),
          TitleTextField(width: width, titleController: titleController),
          SizedBox(height: 24),
          DateTextField(width: width, dateController: dateController),
          SizedBox(height: 24),
          ContentTextField(width: width, contentController: contentController),
          SizedBox(height: 48),
          FlatButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text("Submit Post", style: TextStyle(fontSize: 20)),
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 3,
                color: Colors.black,
              )
            ),
            onPressed: () {
              firestoreInstance.collection("Posts").add({
                "title": titleController.text,
                "content": contentController.text,
                "date": dateController.text,
                "id": Timestamp.now().seconds,
              }).then((value) {
                value != null
                    ? Navigator.popAndPushNamed(context, BlogPage.route)
                    : ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Submission Unsuccesful")));
              });
            },
          ),
        ],
      ),
    );
  }
}



