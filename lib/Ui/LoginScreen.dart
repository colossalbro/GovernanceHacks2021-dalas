import 'package:Dalas/Networking/Authentication.dart';
import 'package:Dalas/Ui/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'PasswordResetScreen.dart';


class LoginScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<LoginScreen> {

  List <Map<String,dynamic>> list = [];
  bool _obscureText = true;
  String password = "";
  String email = "";
  bool loading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void toggle(){
    setState(() {
      if(_obscureText){
        _obscureText = false;
      }
      else{
        _obscureText = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: ModalProgressHUD(
            inAsyncCall: loading,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Flexible(
                        child: Text("Welcome Back!",
                          style: TextStyle(
                              fontSize: 18.0
                          ),),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value){
                          if(value!.isEmpty){
                            return "Email is required";
                          }

                          if(!Authentication().checkEmail(value)){
                            return "Please enter a valid email address";
                          }
                          return null;
                        },
                        onSaved: (value){
                          email = value!;
                        },
                        decoration: InputDecoration(
                            labelText: "Email Address",
                            filled: true,
                            hoverColor: Color(0xFF00c9c8),
                            contentPadding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                            prefixIcon: Icon(Icons.mail_outline),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none
                            )
                        ),
                      ),

                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        onChanged: (value){
                          password = value;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password is Required";
                          }
                          if(value.length<6){
                            return "Password should be at least six characters";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            labelText: "Password",
                            hoverColor: Color(0xFF00c9c8),
                            contentPadding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                            fillColor: Colors.grey[300],
                            filled: true,
                            prefixIcon: Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              onPressed: toggle,
                              icon: Icon(_obscureText == true? Icons.visibility_off:Icons.visibility),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none
                            )
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return PasswordResetScreen();
                            }));
                          },
                          child: Text("Forgot Password?",
                            textAlign: TextAlign.right,),
                        ),

                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        onPressed: (){

                          login(email, password);
                        },
                        padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                        child: Text("Sign in",
                          style: TextStyle(
                              color: Colors.white
                          ),),
                        color: Color(0xFF00c9c8),

                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return SignUpScreen();
                          }));
                        },
                        child: Text("I haven't an account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.underline
                          ),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

      ),
    );
  }

  void login(email,password)async{
    if(!_formKey.currentState!.validate()){
      return;
    }

    _formKey.currentState!.save();
    setState(() {
      loading = true;
    });

    await Authentication().loginUser(email, password,context).then((value){
      setState(() {
        loading = false;

      });
    });
  }
}
