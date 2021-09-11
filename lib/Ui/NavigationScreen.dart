
import 'package:Dalas/Ui/Categories.dart';
import 'package:Dalas/Ui/ReviewDetails.dart';
import 'package:Dalas/Ui/WelcomePage.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int _bottomNavIndex = 0;
  List <Widget> screens = [
    WelcomePage(),
    Categories(),
    ReviewPage()
  ];

  void onItemTapped(int index){

    setState(() {_bottomNavIndex = index;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xFFEDF1F9),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dostuff()!,
                style: TextStyle(color: Colors.black),
              ),
              GestureDetector(
                  onTap: () => print('PROFILE0'),
                  child: Image.asset(
                    'images/profile.png',
                  ))
            ],
          )),
      body: SafeArea(
        child: screens[_bottomNavIndex],
      ),
      floatingActionButton: GestureDetector(
        onTap: (){
          setState(() {
            _bottomNavIndex = 1;
          });
        },
        child: CircleAvatar(
          radius: 30,
            backgroundColor:  Color(0xFF00c9c8),
            child: Image.asset("images/carrot.png",width: 22,)
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffEDF1F9),
        items: <BottomNavigationBarItem>
        [BottomNavigationBarItem(icon: Icon(Icons.home,size: 20.0,),label: "home",backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.person_sharp,size: 1.0),label: "notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person_sharp,size: 20.0),label: "notification"),
          ],
        currentIndex: _bottomNavIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
        selectedLabelStyle: TextStyle(color: Colors.white,fontSize: 1.0),
        unselectedLabelStyle:  TextStyle(color: Colors.white,fontSize: 1.0),
      ),
    );
  }

  String? dostuff(){
    switch( _bottomNavIndex){
      case 0: return "Welcome";

      case 1: return "Categories";

      case 2: return "Reviews";

    }
  }
}
