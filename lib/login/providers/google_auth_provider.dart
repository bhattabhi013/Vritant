import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../models/service_response.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future<ServiceResponse> googleLogin() async {
    ServiceResponse resp = ServiceResponse();
    resp.status = false;
    resp.msg = "Error while signing in";
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return resp;
      _user = googleUser;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      var user = await FirebaseAuth.instance.signInWithCredential(credential);
      resp.status = true;
      resp.msg = "Success";
      resp.data = user.user;
      notifyListeners();
      return resp;
    } on FirebaseAuthException catch (e) {
      resp.msg = e.message as String;
      resp.status = false;
      return resp;
    }
  }

  Future<void> handleSignOut() async {
    await _googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
    notifyListeners();
  }
}
