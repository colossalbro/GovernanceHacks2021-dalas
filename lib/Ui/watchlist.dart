import 'package:Dalas/Blocs/navigationBloc/navBloc.dart';
import '../Repository/constants.dart';
import 'package:Dalas/Repository/constants.dart';
import 'package:flutter/material.dart';
import '../Blocs/navigationBloc/navBloc.dart';

class WatchList extends StatefulWidget {

  @override
  _WatchListState createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: companies.length,
        itemBuilder: (context, index) {
          return companies[index];
        });
  }
}

List<Container> companies = [
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/efcc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EFCC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/carousel/paystack/paystack.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PayStack',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/dangote.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dangote',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/africa.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AHACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/nnpc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NNPC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/efcc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EFCC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/carousel/paystack/paystack.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PayStack',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/dangote.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dangote',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/africa.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AHACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/nnpc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NNPC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/efcc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EFCC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/carousel/paystack/paystack.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PayStack',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/dangote.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dangote',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/africa.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AHACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/nnpc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NNPC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/efcc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EFCC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/carousel/paystack/paystack.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PayStack',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/dangote.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dangote',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/africa.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AHACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/nnpc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NNPC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/efcc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EFCC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/carousel/paystack/paystack.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PayStack',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/dangote.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dangote',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/africa.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AHACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/nnpc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NNPC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/efcc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EFCC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/carousel/paystack/paystack.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PayStack',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/dangote.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dangote',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/africa.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AHACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/nnpc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NNPC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/efcc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EFCC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/carousel/paystack/paystack.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PayStack',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/dangote.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dangote',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/africa.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AHACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/nnpc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NNPC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/efcc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EFCC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/carousel/paystack/paystack.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PayStack',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/dangote.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dangote',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/africa.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AHACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/nnpc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NNPC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
];

List<Container> companies_backup = [
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/efcc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EFCC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/carousel/paystack/paystack.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PayStack',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/dangote.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dangote',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/africa.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AHACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'images/company_logos/nnpc.png',
          width: 50.0,
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NNPC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              'Over all rating',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                primary: Color(0xFF00FFFE),
                onPrimary: Colors.white,
              ),
              onPressed: () => kNavBloc.add(PostReview()),
              child: Text(
                'Post a review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
];
