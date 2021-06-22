import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Categories.dart' show categories, Category;
import 'ReviewDetails.dart' show containers;

List<Category> newCats = categories.sublist(0, 2);

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEDF1F9),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'explore organizations near you',
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
            Image.asset('images/profile.png'),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () => print('exploring'),
                    child: Text(
                      'see all...',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
            Expanded(
              flex: 2,
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
                        height: double.infinity,
                        width: 260.0,
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
            Expanded(
              flex: 5,
              child: Container(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/carousel/paystack/paystack.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PayStack',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23.0),
                            ),
                            Text(
                              'Over all rating',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
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
                                    borderRadius: BorderRadius.circular(10.0)),
                                shadowColor: Colors.white,
                                side: BorderSide(
                                  color: Color(0xFF00FFFE),
                                ),
                                primary: Colors.white,
                                onPrimary: Color(0xFF00FFFE),
                              ),
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
                                    borderRadius: BorderRadius.circular(10.0)),
                                shadowColor: Colors.white,
                                side: BorderSide(
                                  color: Color(0xFF00FFFE),
                                ),
                                primary: Color(0xFF00FFFE),
                                onPrimary: Colors.white,
                              ),
                              onPressed: () => print('post a review'),
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
                    CarouselSlider(
                      items: containers,
                      options: CarouselOptions(
                        height: 180,
                        autoPlay: true,
                        enableInfiniteScroll: false,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
