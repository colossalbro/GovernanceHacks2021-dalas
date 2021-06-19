import 'package:flutter/material.dart';
import 'Ui/Categories.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    return Categories();
  }
}
