import 'package:flutter/cupertino.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../Repository/constants.dart';

List<PageViewModel> screens = [
  PageViewModel(
    title: 'Welcome',
    body:
        'View Analytics of Companies and Government Agencies and add to your personally customized watchlist to monitor their activities in real time',
    image: Image.asset('images/OnBoarding/slide1.png'),
  ),
  PageViewModel(
    title: 'Spray',
    body:
        'Review Organisations and Government Agencies, rate these organisations and nominate them to receive awards',
    image: Image.asset('images/OnBoarding/slide2.png'),
  ),
  PageViewModel(
    title: 'Redeem',
    body: 'Rate Government Officials hold them accountable',
    image: Image.asset('images/OnBoarding/slide3.png'),
  ),
  PageViewModel(
    title: 'Redeem',
    body: 'Earn chimoney for every review',
    image: Image.asset('images/OnBoarding/slide4.png'),
  ),
];

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: screens,
      showNextButton: true,
      done: Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => kNavBloc.add(GoLogin()),
      next: Text("Next", style: TextStyle(fontWeight: FontWeight.w600)),
    );
    ;
  }
}
