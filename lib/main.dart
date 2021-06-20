import 'package:Dalas/Ui/ReviewDetails.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Landing(),
  ),
);

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return ReviewPage();
  }
}
