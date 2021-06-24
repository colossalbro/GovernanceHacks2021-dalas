import 'package:Dalas/Ui/PostReview.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Dalas/Ui/Categories.dart';
import 'package:flutter/material.dart';
import 'Repository/constants.dart';
import 'Ui/ReviewDetails.dart';
import 'Blocs/navigationBloc/navBloc.dart';
import 'Ui/watchlist.dart';
import 'Ui/HomePage.dart';
import 'Ui/Feeds.dart';

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
      navigateRoute: LandingPage(),
    );
  }
}

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
      appBar: AppBar(
        backgroundColor: Color(0xFFEDF1F9),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kNavBloc.appBarTitle,
              style: TextStyle(color: Colors.black),
            ),
            Image.asset('images/profile.png')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => widget.index = 2);
          kNavBloc.add(GoFeed());
        },
        backgroundColor: widget.active,
        child: Image.asset('images/carrot.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: widget.active,
        inactiveColor: Colors.black,
        gapLocation: GapLocation.center,
        onTap: (num) =>
        (num == 0)
            ? {setState(() => widget.index = 0), kNavBloc.add(GoHome())}
            : {setState(() => widget.index = 1), kNavBloc.add(GoWatchList())},
        activeIndex: widget.index,
        icons: [
          Icons.home_outlined,
          Icons.rice_bowl_sharp,
        ],
      ),
      body: BlocBuilder<NavigationBloc, CurrentPage>(
        bloc: kNavBloc,
        builder: (context, state) {
          if (state is HomePage)
            return WelcomePage();
          else if (state is FeedsPage)
            return Feeds(
              bloc: kNavBloc,
            );
          else if (state is WatchListPage)
            return WatchList();
          else if (state is PostReviewPage)
            return NewPost(
              bloc: kNavBloc,
            );

          return Container();
        },
      ),
    );
  }
}
