
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils{

  Future <bool> isUserLoggedIn()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool boolValue = preferences.getBool("boolvalue")?? false;
    return boolValue;

  }

  addBoolToSF(_auth)async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("boolvalue", true);
  }

  displayToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 12.0
    );
  }
}