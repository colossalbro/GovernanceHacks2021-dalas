
import 'package:Dalas/Ui/LoginScreen.dart';
import 'package:Dalas/Ui/ProfileSetUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter/material.dart';
import 'Ui/SignUpScreen.dart';
import 'Ui/onboarding.dart';




void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) async{

  });
  await Firebase.initializeApp();
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}

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
      navigateRoute: LandingPage(),
    );
  }
}

// ignore: must_be_immutable
class LandingPage extends StatefulWidget {
  int index = 0;
  Color active = Color(0xFF00FFFE);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      /*bottomNavigationBar: (kNavBloc.showBars == true)
          ? AnimatedBottomNavigationBar(
              activeColor: widget.active,
              inactiveColor: Colors.black,
              gapLocation: GapLocation.center,
              onTap: (num) => (num == 0)
                  ? {setState(() => widget.index = 0), kNavBloc.add(GoHome())}
                  : {
                      setState(() => widget.index = 1),
                      kNavBloc.add(GoWatchList())
                    },
              activeIndex: widget.index,
              icons: [
                Icons.home_outlined,
                Icons.rice_bowl_sharp,
              ],
            )
          : null,*/
      body: OnBoarding()
    );
  }
}
