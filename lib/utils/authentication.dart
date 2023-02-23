import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> signOut(dynamic context) async {
  try{
    // await GoogleSignIn().disconnect();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, '/login');
  }catch (e){
    // print(e);
  }
}

Future<void> signInWithGoogle(dynamic context) async {
  final dynamic googleUser = await GoogleSignIn().signIn();
  final dynamic googleAuth = await googleUser?.authentication;
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  await FirebaseAuth.instance.signInWithCredential(credential);
  if (FirebaseAuth.instance.currentUser == null) {
    Navigator.pushReplacementNamed(context, '/login');
  }
  else{
    Navigator.pushReplacementNamed(context, '/navigator');
  }
}
