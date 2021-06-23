import 'package:Dalas/Ui/PostReview.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Categories.dart';
import 'ReviewDetails.dart' show containers;
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Blocs/navBloc.dart';

List<Category> newCats = categories.sublist(0, 2);

class Feeds extends StatefulWidget {
  NavigationBloc bloc;

  Feeds({required this.bloc});

  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Categories())),
                    child: Text(
                      'see all...',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
            Container(
              height: 250.0,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: newCats.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => print(newCats[index].name),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.only(right: 20.0),
                        width: 250.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('${newCats[index].imgPath}'),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '${newCats[index].hearts}+',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  newCats[index].name,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Latest Reviews',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF00FFFE),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 15.0),
                    margin: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 30.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                                'images/carousel/paystack/paystack.png'),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                                      .showSnackBar(SnackBar(
                                          backgroundColor: Color(0xFF00FFFE),
                                          content: Text(
                                            'PayStack has been added to your salad bowl!',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ))),
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
                                  onPressed: () =>
                                      widget.bloc.add(PostReview()),
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
                        Row(
                          children: [
                            Text(
                              'Reviews: 100+',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Social Responsibilities: 50+',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Awards: 5+',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        CarouselSlider(
                          items: containers,
                          options: CarouselOptions(
                            height: 180,
                            autoPlay: true,
                            enableInfiniteScroll: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF00FFFE),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 15.0),
                    margin: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 30.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/company_logos/africa.png',
                              width: 50.0,
                              height: 50.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahacks',
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
                                        'AfricaHacks has been added to your salad bowl!',
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
                                  onPressed: () =>
                                      widget.bloc.add(PostReview()),
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
                        Row(
                          children: [
                            Text(
                              'Reviews: 100+',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Social Responsibilities: 50+',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Awards: 5+',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        CarouselSlider(
                          items: containers,
                          options: CarouselOptions(
                            height: 180,
                            autoPlay: true,
                            enableInfiniteScroll: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF00FFFE),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 15.0),
                    margin: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 30.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/company_logos/nnpc.png',
                              width: 50.0,
                              height: 50.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NNPC',
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
                                        'NNPC has been added to your salad bowl!',
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
                                  onPressed: () =>
                                      widget.bloc.add(PostReview()),
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
                        Row(
                          children: [
                            Text(
                              'Reviews: 100+',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Social Responsibilities: 50+',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Awards: 5+',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        CarouselSlider(
                          items: containers,
                          options: CarouselOptions(
                            height: 180,
                            autoPlay: true,
                            enableInfiniteScroll: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
