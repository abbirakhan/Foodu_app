import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:foodu_app/pages/firebase_const.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthController extends GetxController {
  Future<Type> loginMethods(email, password, context) async {
    UserCredential userCredential;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return UserCredential;
  }

  Future<Type> sigupMethods(
      {required String email, required String password, context}) async {
    UserCredential userCredential;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return UserCredential;
  }

  storeUserData(
    firstName,
    password,
    email,
    TextEditingController lastNameController,
  ) async {
    DocumentReference store =
        await firestore.collection("usersCollection").doc(CurrentUser!.uid);
    store.set({
      "firstName": firstName,
      "password": password,
      "email": email,
    });
  }

  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
