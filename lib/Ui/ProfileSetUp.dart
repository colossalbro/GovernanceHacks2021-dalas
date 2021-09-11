
import 'dart:io';

import 'package:Dalas/Networking/Authentication.dart';
import 'package:Dalas/Services/Utils.dart';
import 'package:Dalas/Ui/NavigationScreen.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSetUp extends StatefulWidget {

  @override
  _ProfileSetUpState createState() => _ProfileSetUpState();
}

class _ProfileSetUpState extends State<ProfileSetUp> {
  final addressController = TextEditingController();

  final nameController = TextEditingController();

  final phoneController = TextEditingController();

  final emailController = TextEditingController();

  final descriptionController = TextEditingController();

  double? screenHeight;

  File? imageFile;

  final _picker = ImagePicker();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                      _pickImageFromGallery();
                      },),
                      child: CircleAvatar(
                        radius: 75,
                        child: imageFile == null?Image.asset("images/logo.png",width: 100,):Image.file(this.imageFile!,width: 75,),
                        backgroundColor: Color(0xff858b97),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight! * 0.075,
                    ),
                    Form(
                      key: _formKey,
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
                                return "Email is required";
                              }

                              if(!Authentication().checkEmail(value)){
                                return "Please enter a valid email address";
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
                      onPressed: onPressed,
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Icon(Icons.arrow_forward_rounded,color: Colors.white,)
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                      return NavigationScreen();
                    }));
                  },
                  child: Icon(Icons.clear,color: Colors.black87,size: 20,)), ],
          ),
        ),
      ),
    );
  }

  Future <void> _pickImageFromGallery()async {
    final PickedFile pickedFile = (await _picker.getImage(source: ImageSource.gallery))!;
    setState(() {
      this.imageFile = File(pickedFile.path);
    });
  }

  Future <void> _pickImageFromCamera()async {
    final PickedFile pickedFile = (await _picker.getImage(source: ImageSource.camera))!;
    setState(() {
      this.imageFile = File(pickedFile.path);
    });
  }

  void onPressed(){
    if(!_formKey.currentState!.validate()){
      return;
    }

    if(imageFile == null){
      Utils().displayToast("Upload company logo");
    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return NavigationScreen();
      }));
    }
    }
  }


