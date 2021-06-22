import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter/material.dart';
import 'Ui/ReviewDetails.dart';
import 'Ui/Explore.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
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
    return SplashScreenView(
      backgroundColor: Colors.white,
      imageSrc: 'images/logo.png',
      imageSize: 100,
      duration: 5000,
      navigateRoute: Explore(),
    );
    ;
  }
}
