import 'dart:io';

import 'package:Dalas/Blocs/profileBloc/profileBloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


/*BoxDecoration activeBox = BoxDecoration(
  borderRadius: BorderRadius.circular(10.0),
  border: Border.all(color: Color(0xFF00FFFE)),
);
BoxDecoration inactiveBox = BoxDecoration();
bool tags0 = true;
bool tags1 = false;
bool tags2 = false;
bool tags3 = false;

class ReviewPage extends StatefulWidget {
  String display = 'review';

  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEDF1F9),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kProfileBloc.appBarTitle,
              style: TextStyle(color: Colors.black),
            ),
            Image.asset('images/profile.png')
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                                'images/carousel/paystack/paystack.png'),
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
                                    onPrimary: Color(0xFF00FFFE),
                                  ),
                                  onPressed: () => ScaffoldMessenger.of(context)
                                      .showSnackBar(
                                    SnackBar(
                                      backgroundColor: Color(0xFF00FFFE),
                                      content: Text(
                                        'PayStack has been added to your salad bowl!',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
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
                                  onPressed: () => kNavBloc.add(PostReview()),
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
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => setState(() {
                              tags0 = true;
                              tags1 = false;
                              tags2 = false;
                              tags3 = false;
                              kProfileBloc.add(SeeReviews());
                            }),
                            child: Container(
                                decoration:
                                    (tags0 == true) ? activeBox : inactiveBox,
                                child: tags[0]),
                          ),
                          tags[1],
                          tags[2],
                          GestureDetector(
                            onTap: () => setState(() {
                              tags0 = false;
                              tags1 = false;
                              tags2 = false;
                              tags3 = true;
                              kProfileBloc.add(SeeProfile());
                            }),
                            child: Container(
                                decoration:
                                    (tags3 == true) ? activeBox : inactiveBox,
                                child: tags[3]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BlocBuilder<ProfileBloc, ProfileState>(
              bloc: kProfileBloc,
              builder: (context, state) {
                if (state is ViewReviews)
                  return Container(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'images/profile.png',
                                    scale: 0.8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            style:
                                                TextStyle(color: Colors.grey),
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
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin:
                                    EdgeInsets.fromLTRB(80.0, 3.0, 0.0, 0.0),
                                width: double.infinity,
                                height: 0.4,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                else if (state is ViewProfile)
                  return SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Website:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('https://paystack.com'),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Size:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('68'),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Type:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('Company'),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Headquarters:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('Lekki, Lagos, Nigeria'),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Founded:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('2015'),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Industry:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('Fintech'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                            style: TextStyle(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Image.asset('images/carousel/paystack/graph.png'),
                        ],
                      ),
                    ),
                  );

                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Tag extends StatefulWidget {
  final String suffix;
  final Widget prefix;
  final Function ontap;

  Tag(
      {required this.prefix,
      required this.suffix,
      required this.ontap,
      required this.isActive});

  BoxDecoration decor = BoxDecoration();
  bool isActive = false;

  @override
  _TagState createState() => _TagState();
}

class _TagState extends State<Tag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.prefix,
          Text(
            widget.suffix,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17.0),
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
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('images/carousel/paystack/vector.png'),
      ),
    ),
  ),
  Container(
    width: 200.0,
    height: 200.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('images/carousel/paystack/vector1.png'),
      ),
    ),
  ),
];

List<Tag> tags = [
  Tag(
    prefix: Text('100+'),
    suffix: 'Reviews',
    ontap: () {},
    isActive: tags0,
  ),
  Tag(
    prefix: Text('80%'),
    suffix: 'Score',
    ontap: () {},
    isActive: tags1,
  ),
  Tag(
    prefix: Text('5+'),
    suffix: 'Awards',
    ontap: () => print('working'),
    isActive: tags2,
  ),
  Tag(
    prefix: Icon(Icons.view_headline_sharp),
    suffix: 'Profile',
    ontap: () => print('tapped'),
    isActive: tags3,
  ),
];*/