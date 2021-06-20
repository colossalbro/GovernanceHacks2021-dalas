import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFEDF1F9),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset('images/profile.png')],
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/profile.png'),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PayStack',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                                Text(
                                  'Over all rating',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFF00FFFE),
                                      size: 18.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFF00FFFE),
                                      size: 18.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFF00FFFE),
                                      size: 18.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFF00FFFE),
                                      size: 18.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFF00FFFE),
                                      size: 18.0,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      shadowColor: Colors.white,
                                      side: BorderSide(
                                        color: Color(0xFF00FFFE),
                                      ),
                                      primary: Colors.white,
                                      onPrimary: Color(0xFF00FFFE)),
                                  onPressed: () => print('add to salad bowl'),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Add to salad bowl',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    shadowColor: Colors.white,
                                    side: BorderSide(
                                      color: Color(0xFF00FFFE),
                                    ),
                                    primary: Color(0xFF00FFFE),
                                    onPrimary: Colors.white,
                                  ),
                                  onPressed: () => print('add to salad bowl'),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Post a review',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20.0),
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                            child: CarouselSlider(
                              items: containers,
                              options: CarouselOptions(
                                height: 400,
                                autoPlay: true,
                                enableInfiniteScroll: false,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: () => print('button pressed'),
                                  child: Column()),
                              ElevatedButton(
                                  onPressed: () => print('button pressed'),
                                  child: Column()),
                              ElevatedButton(
                                  onPressed: () => print('button pressed'),
                                  child: Column()),
                              ElevatedButton(
                                  onPressed: () => print('button pressed'),
                                  child: Column()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/profile.png',
                              scale: 0.8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Peter Paul',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 100.0,
                                    ),
                                    Text(
                                      '8m ago',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'He\'ll want to use your yatch, and I don\'t\nwant this thing smelling like fish',
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(150, 0.0, 150.0, 0.0),
                          width: double.infinity,
                          height: 0.8,
                          color: Colors.grey[400],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Container> containers = [
  Container(
    width: 200.0,
    height: 200.0,
    color: Colors.black,
  ),
  Container(
    width: 200.0,
    height: 200.0,
    color: Colors.pink,
  ),
  Container(
    width: 200.0,
    height: 200.0,
    color: Colors.blue,
  ),
  Container(
    width: 200.0,
    height: 200.0,
    color: Colors.brown,
  ),
];
