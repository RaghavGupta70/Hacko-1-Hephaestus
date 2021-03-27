import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hephaestapp/model/user.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  

  Userqw _userfromfirebaseUser(User user){
    return user !=null ? Userqw(userId: user.uid) : null;
  }

  Future signInWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User firebaseuser = result.user;
      return _userfromfirebaseUser(firebaseuser);
     } on FirebaseAuthException catch (e) {
       Fluttertoast.showToast(msg: e.message, gravity: ToastGravity.TOP,timeInSecForIosWeb: 5,);
 }
    
     catch (e) {
        print(e.toString());
        return null;
    }
  }

   

  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User firebaseuser = result.user;
      return _userfromfirebaseUser(firebaseuser);
    } on FirebaseAuthException catch (e) {
   Fluttertoast.showToast(msg: e.message, gravity: ToastGravity.TOP,timeInSecForIosWeb: 5,);
 }
    catch (e) {
      print(e.toString());
      return null;
    }
  }

Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

}
