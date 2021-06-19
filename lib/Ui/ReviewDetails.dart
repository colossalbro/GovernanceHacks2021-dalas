import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [Text('TEXT 1')],
                  ),
                  Row(
                    children: [Text('TEXT 2')],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(),
            ),
          ),
        ],
      ),
    );
  }
}
