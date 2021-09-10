
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProfileSetUp extends StatelessWidget {

  final addressController = TextEditingController();

  final nameController = TextEditingController();

  final phoneController = TextEditingController();

  final emailController = TextEditingController();

  final descriptionController = TextEditingController();

  double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Icon(Icons.clear,color: Colors.black87,size: 20,),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: screenHeight! * 0.0125,),
                    Text("COMPANY?",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                    ),),
                    SizedBox(height: 3,),
                    Text("Kindly set up your profile!",style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300
                    ),),
                    Container(
                      width: double.infinity,
                      height: screenHeight! * 0.05,
                    ),
                    Badge(
                      position: BadgePosition.bottomEnd(
                          bottom: 5,
                          end: 5
                      ),
                      badgeColor: Color(0xFF00c9c8),
                      elevation: 0,
                      badgeContent: InkWell(child: Icon(Icons.edit),onTap: (){

                      },),
                      child: CircleAvatar(
                        radius: 75,
                        child: Image.asset("images/logo.png",width: 100,),
                        backgroundColor: Color(0xff858b97),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight! * 0.075,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value){
                              if(value!.isEmpty){
                                return "Company name is Required";
                              }
                              return null;
                            },
                            controller: nameController,

                            decoration: InputDecoration(
                                labelText: "Company Name",
                                filled: true,
                                contentPadding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                                prefixIcon: Icon(Icons.person_outline),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none
                                )
                            ),
                          ),
                          SizedBox(
                            height: screenHeight! * 0.0187,
                          ),
                          TextFormField(
                            validator: (value){
                              if(value!.isEmpty){
                                return "Email is Required";
                              }
                              return null;
                            },
                            controller: emailController,
                            decoration: InputDecoration(
                                labelText: "Email Address",
                                filled: true,
                                contentPadding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                                prefixIcon: Icon(Icons.email_outlined),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none
                                )
                            ),
                          ),

                          SizedBox(
                            height: screenHeight! * 0.0187,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            validator: (value){
                              if(value!.isEmpty){
                                return "Call no is Required";
                              }
                              return null;
                            },
                            controller: phoneController,
                            decoration: InputDecoration(
                                labelText: "Phone no",
                                filled: true,
                                contentPadding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                                prefixIcon: Icon(Icons.call),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none
                                )
                            ),
                          ),
                          SizedBox(
                            height: screenHeight! * 0.0187,
                          ),
                          TextFormField(
                            validator: (value){
                              if(value!.isEmpty){
                                return "Address is Required";
                              }
                              return null;
                            },
                            controller: addressController,
                            decoration: InputDecoration(
                                labelText: "Address",
                                filled: true,
                                contentPadding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                                prefixIcon: Icon(Icons.location_on_outlined),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none
                                )
                            ),


                          ),

                          SizedBox(
                            height: screenHeight! * 0.0187,
                          ),
                          TextFormField(
                            maxLines: 8,
                            validator: (value){
                              if(value!.isEmpty){
                                return "Description is Required";
                              }
                              return null;
                            },
                            controller: descriptionController,
                            decoration: InputDecoration(
                                hintText: "Description",
                                filled: true,
                                contentPadding: EdgeInsets.only(top: 10.0,
                                    bottom: 10.0,left: 20.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none
                                )
                            ),

                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 35,
                    ),
                    MaterialButton(
                      color: Color(0xFF00c9c8),
                      shape: CircleBorder(),
                      onPressed: () {},
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Icon(Icons.arrow_forward_rounded,color: Colors.white,)
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
