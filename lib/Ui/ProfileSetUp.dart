
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
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children:[CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xffEDF1F9),
                ),

                Positioned(child: MaterialButton(
                  onPressed: null,
                  child: ,
                )]
              )

            ],
          ),
        ),
      ),
    );
  }
}
