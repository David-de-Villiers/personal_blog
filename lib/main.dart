import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_blog/pages/add_post_page/add_post_page.dart';
import 'package:personal_blog/pages/admin_page/admin_page.dart';
import 'package:personal_blog/pages/contact_page/contact_page.dart';
import 'package:personal_blog/pages/home_page/home_page.dart';
import 'package:personal_blog/pages/not_found_page/not_found_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:personal_blog/pages/blog_page/blog_page.dart';
import 'package:personal_blog/pages/resume_page/resume_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return BlogApp();
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class BlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'David de Villiers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => HomePage(),
        AddPostPage.route: (context) => AddPostPage(),
        BlogPage.route: (context) => BlogPage(),
        AdminPage.route: (context) => AdminPage(),
        ResumePage.route: (context) => ResumePage(),
        ContactPage.route: (context) => ContactPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
            builder: (context) {
              return NotFoundPage();
            }
        );
      },

    );
  }
}
