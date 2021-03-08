import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_blog/pages/add_post_page/blog_form.dart';
import 'package:personal_blog/pages/blog_page/blog_page.dart';

class AddPostPage extends StatefulWidget {
  static const String route = "/add-post";
  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {

    final firestoreInstance = FirebaseFirestore.instance;
    final width = MediaQuery.of(context).size.width;
    final _formKey = GlobalKey<FormState>();
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();
    TextEditingController dateController = TextEditingController();

    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Add Blog Post", style: TextStyle(fontSize: 24, color: Colors.black)),
          centerTitle: true,
          leading: Container(),
          actions: [
            FlatButton.icon(
              icon: Icon(Icons.clear),
              label: Text("Cancel"),
              onPressed: () => Navigator.of(context).pushNamed(BlogPage.route),
              color: Colors.white,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: BlogForm(
                formKey: _formKey,
                width: width,
                titleController: titleController,
                contentController: contentController,
                dateController: dateController,
                firestoreInstance: firestoreInstance
            ),
          ),
        ),
      ),
    );
  }
}


