import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../helpers/helpers.dart';

typedef FbAuthStateListener = void Function({required bool status});

class FbAuthController with Helpers {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> signIn(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        if (userCredential.user!.emailVerified) {
          return true;
        } else {
          await userCredential.user!.sendEmailVerification();
          await signOut();
          showSnackBar(
              context: context,
              message: 'Email must be verified, check and try again!',
              error: true);
        }
      }
    } catch (e) {
      print(e);
    }
    return false;
  }

  StreamSubscription checkUserState({required FbAuthStateListener listener}) {
    return _firebaseAuth.authStateChanges().listen((User? user) {
      listener(status: user != null);
    });
  }

  Future<bool> createAccount(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      await userCredential.user!.sendEmailVerification();
      await signOut();
      showSnackBar(
          context: context,
          message: 'Account created, verify email to start using app');
      return true;
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future<bool> forgetPassword(
      {required BuildContext context, required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      showSnackBar(
          context: context,
          message: 'Password reset email sent, check your email');
      return true;
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    return false;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
