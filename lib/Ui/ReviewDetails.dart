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
                          Tag(
                            prefix: Text('100+'),
                            suffix: 'Reviews',
                            ontap: () => print('working'),
                          ),
                          Tag(
                            prefix: Text('80%'),
                            suffix: 'Score',
                            ontap: () => print('working'),
                          ),
                          Tag(
                            prefix: Text('5+'),
                            suffix: 'Awards',
                            ontap: () => print('working'),
                          ),
                          Tag(
                            prefix: Icon(Icons.view_headline_sharp),
                            suffix: 'Profile',
                            ontap: () => print('testing'),
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
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(80.0, 3.0, 0.0, 0.0),
                          width: double.infinity,
                          height: 0.4,
                          color: Colors.grey,
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

class Tag extends StatefulWidget {
  final String suffix;
  final Widget prefix;
  final Function ontap;

  Tag({required this.prefix, required this.suffix, required this.ontap});

  bool decorate = false;
  BoxDecoration decor = BoxDecoration();

  @override
  _TagState createState() => _TagState();
}

class _TagState extends State<Tag> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          (widget.decorate == false)
              ? widget.decorate = true
              : widget.decorate = false;
          (widget.decorate == true)
              ? widget.decor = BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Color(0xFF00FFFE)),
                )
              : widget.decor = BoxDecoration();
        });
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        decoration: widget.decor,
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
