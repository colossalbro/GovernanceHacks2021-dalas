
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProfileSetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16,right: 16,top: 16),
          child: Column(
            children: [
              SizedBox(height: 10,),
            Text("COMPANY?",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700
            ),),
              SizedBox(height: 3,),
              Text("Kindly set up your profile!",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300
              ),),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Badge(
                position: BadgePosition.bottomEnd(
                  bottom: 5,
                  end: 5
                ),
                badgeColor: Colors.blue,
                elevation: 0,
                badgeContent: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.edit,color: Colors.black,),
                ),
                child: CircleAvatar(
                  radius: 75,
                  child: Image.asset("images/logo.png"),
                  backgroundColor: Color(0xffEDF1F9),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
