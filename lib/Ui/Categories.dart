import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final String imgPath, name;
  final int hearts;

  Category({required this.imgPath, required this.hearts, required this.name});
}

List<Category> categories = [
  Category(
      imgPath: 'images/categories/vector.png', hearts: 100, name: 'Companies'),
  Category(
      imgPath: 'images/categories/vector1.png',
      hearts: 100,
      name: 'Government Institutions'),
  Category(
      imgPath: 'images/categories/vector2.png',
      hearts: 150,
      name: 'Industries'),
  Category(
      imgPath: 'images/categories/vector.png',
      hearts: 120,
      name: 'Placeholder'),
  Category(
      imgPath: 'images/categories/vector.png', hearts: 100, name: 'Companies'),
  Category(
      imgPath: 'images/categories/vector1.png',
      hearts: 100,
      name: 'Government Institutions'),
  Category(
      imgPath: 'images/categories/vector2.png',
      hearts: 150,
      name: 'Industries'),
  Category(
      imgPath: 'images/categories/vector.png',
      hearts: 120,
      name: 'Placeholder'),
  Category(
      imgPath: 'images/categories/vector.png', hearts: 100, name: 'Companies'),
  Category(
      imgPath: 'images/categories/vector1.png',
      hearts: 100,
      name: 'Government Institutions'),
  Category(
      imgPath: 'images/categories/vector2.png',
      hearts: 150,
      name: 'Industries'),
  Category(
      imgPath: 'images/categories/vector.png',
      hearts: 120,
      name: 'Placeholder'),
  Category(
      imgPath: 'images/categories/vector.png', hearts: 100, name: 'Companies'),
  Category(
      imgPath: 'images/categories/vector1.png',
      hearts: 100,
      name: 'Government Institutions'),
  Category(
      imgPath: 'images/categories/vector2.png',
      hearts: 150,
      name: 'Industries'),
  Category(
      imgPath: 'images/categories/vector.png',
      hearts: 120,
      name: 'Placeholder'),
];

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xFFEDF1F9),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(color: Colors.black),
              ),
              GestureDetector(
                  onTap: () => print('PROFILE0'),
                  child: Image.asset(
                    'images/profile.png',
                  ))
            ],
          )),*/
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => print(categories[index].name),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(bottom: 20.0),
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('${categories[index].imgPath}'),
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
                            '${categories[index].hearts}+',
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
                            categories[index].name,
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
    );
  }
}
