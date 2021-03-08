import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  signOut() {
    FirebaseAuth.instance.signOut();
  }

  signIn(email, password) {
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((user) {
      print("Success!");
    }).catchError((e) {
      return ("Error:" + e);
    });
  }

//  Future getLoggedFirebaseUser() {
//    return FirebaseAuth.instance.currentUser;
//  }
}