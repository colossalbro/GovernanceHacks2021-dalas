
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SaladLoginPage extends StatelessWidget {
  static final id = 'signUp';
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password1 = TextEditingController();
  final TextEditingController password2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: FormBuilder(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'nunito_regular',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                    color: Colors.grey[300],
                    height: 2.0,
                  ),
                  FormBuilderTextField(
                    name: 'username',
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0x9FE4E4E4),
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  FormBuilderTextField(
                    name: 'password',
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0x9FE4E4E4),
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => null,
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(fontFamily: 'nunito_regular'),
                      ),
                      TextButton(
                        onPressed: () {
                          print('Signing In');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
