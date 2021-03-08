import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_blog/pages/home_page/home_page.dart';
import 'package:personal_blog/services/firebase_auth_service.dart';

class AdminPage extends StatefulWidget {
  static const String route = "/admin";

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final _formKey = new GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return WillPopScope(
      onWillPop: () => Navigator.popAndPushNamed(context, HomePage.route),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Admin", style: GoogleFonts.cutiveMono(fontSize: 24, color: Colors.black)),
          centerTitle: true,
          leading: Container(),
          actions: [
            FlatButton.icon(
              icon: Icon(Icons.clear),
              label: Text("Cancel", style: GoogleFonts.cutiveMono(fontSize: 20, color: Colors.black)),
              onPressed: () => Navigator.of(context).pushNamed(HomePage.route),
              color: Colors.white,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
          ],
        ),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Divider(height: 2, color: Colors.black, thickness: 1),
                SizedBox(height: 36),
                SizedBox(
                  width: width > 720 ? 720 : width * 0.6,
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        )),
                        hintText: "Email"),
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: width > 720 ? 720 : width * 0.6,
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        )),
                        hintText: "Password"),
                  ),
                ),
                SizedBox(height: 48),
                SizedBox(
                  width: 250,
                  child: FlatButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        child: Text("Sign In", style: GoogleFonts.inconsolata(fontSize: 20)),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.black,
                      )),
                      onPressed: () async {
                        AuthService().signIn(emailController.text, passwordController.text);
                        await Future.delayed(const Duration(seconds: 1));
                        FirebaseAuth.instance.currentUser != null
                            ? Navigator.popAndPushNamed(context, HomePage.route)
                            : ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Unsuccesful")));
                      }),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: 250,
                  child: FlatButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        child: Text("Sign Out", style: GoogleFonts.inconsolata(fontSize: 20)),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.black,
                          )),
                      onPressed: () async {
                        AuthService().signOut();
                        await Future.delayed(const Duration(seconds: 1));
                        FirebaseAuth.instance.currentUser == null
                            ? Navigator.popAndPushNamed(context, HomePage.route)
                            : ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Unsuccesful")));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
