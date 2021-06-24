import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Blocs/navigationBloc/navBloc.dart';

class NewPost extends StatelessWidget {
  NavigationBloc bloc;

  NewPost({required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 45.0, 20.0, 45.0),
      child: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 3.0, color: Colors.black),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Post a Review',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                child: FormBuilderTextField(
                  maxLines: 10,
                  name: 'review',
                  showCursor: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEDF1F9),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Text(
                'Rating',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              RatingBar.builder(
                itemSize: 20.0,
                glow: false,
                initialRating: 1,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Color(0xFF00FFFE),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF00FFFE),
                    padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0)),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Color(0xFF00FFFE),
                      content: Text(
                        'Thank you for your review!',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                  bloc.add(GoFeed());
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
