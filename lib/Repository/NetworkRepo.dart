import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as converto;

class User {
  User({
    required this.FirstName,
    required this.LastName,
    required this.age,
    required this.email,
    required this.username,
    required this.password,
  });

  String FirstName;
  String LastName;
  int age;
  String email;
  String username;
  String password;

  Map toJson() => {
        'email': email,
        'username': username,
        'password': password,
        'first_name': FirstName,
        'last_name': LastName,
        'age': age,
      };
}

class SignInUser extends User {
  @override
  Map toJson() => {
        'username': username,
        'email': email,
        'password': password,
      };
}

class SignUpUser extends User {
  SignUpUser({this.password1, this.password2});

  String password1;
  String password2;

  @override
  Map toJson() => {
        'email': email,
        'username': username,
        'password': password,
        'first_name': FirstName,
        'last_name': LastName,
        'password1': password1,
        'password2': password2,
      };

  bool checkPasswords() {
    return (password1 == password2) ? true : false;
  }
}

Future<http.Response> SignUp(var ServerIp, SignUpUser user) async {
  return await http.post(
    ServerIp,
    headers: {"Content-Type": "application/json"},
    body: converto.json.encode(user),
  );
}

Future<http.Response> SignIn(var ServerIp, SignInUser user) async {
  return await http.post(
    ServerIp,
    headers: {"Content-Type": "application/json"},
    body: converto.json.encode(user),
  );
}
