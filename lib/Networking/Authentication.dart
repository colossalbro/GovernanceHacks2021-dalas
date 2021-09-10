
import 'package:Dalas/Services/Utils.dart';
import 'package:Dalas/Ui/ProfileSetUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Authentication{

  final _auth = FirebaseAuth.instance;

  //create user account on firebase
  Future <void> createUser(username,email,password)async{
    try {
      UserCredential newUser = await  _auth.createUserWithEmailAndPassword(email: email, password: password);
      await newUser.user!.updateDisplayName(username).then((value)async{
        await newUser.user!.sendEmailVerification().then((value){
          Utils().displayToast("Please check your email for verification");
        });

      });
    } on Exception catch (e) {
      if(e.toString().contains("EMAIL_ALREADY_IN_USE")){
        Utils().displayToast("Email aleady exists");
      }

      if(e.toString().contains("NETWORK_REQUEST_FAILED")){
      //  Utils().displayToast("Network problem occured");
      }
    }
  }


  //check for wrong email formatting
  bool checkEmail(String value){
    if(!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)){
      return false;
    }
    else{
      return true;
    }
  }


  //login user into app
  Future <void> loginUser(String email,password,context)async{

    try {
      final newUser = await  _auth.signInWithEmailAndPassword(email: email, password: password);
      if(newUser != null) {
        if (newUser.user!.emailVerified) {
          Utils().addBoolToSF(_auth);
          Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft,duration: Duration(milliseconds: 500),
               child: ProfileSetUp()));

        }
        else {
          Utils().displayToast("Email not verified");
        }
      }
    } on Exception catch (e) {
      print(e.toString());
      if(e.toString().contains("network-request-failed")){
        Utils().displayToast("Network problem occured");
      }

      if(e.toString().contains("The password is invalid")){
        Utils().displayToast("Incorrect password");

      }
      if(e.toString().contains("no user record")){
        Utils().displayToast("User not found");
      }
    }
  }

  //sends email to reset password
  Future <void> resetEmail(email)async{
    try {
      await  _auth.sendPasswordResetEmail(email: email);
      Utils().displayToast(" Reset link has been sent to your email");



    } on Exception catch (e) {
      print(e.toString());
      if(e.toString().contains("no user record")){
        Utils().displayToast("User not found");
      }

      if(e.toString().contains("network-request-failed")){
        Utils().displayToast("Network problem occured");
      }

    }
  }



  //signs out user out of user account
  Future <void> signOut()async{

  /*  await _auth.signOut().then((value)async{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setBool("boolvalue", false);

    }).onError((error, stackTrace){
      Utils().displayToast("An error occured");
    });*/
  }


}
