import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/cardio.jpg',
            image_caption: 'cardio',
          ),
          Category(
            image_location: 'images/cats/diabetic.jpg',
            image_caption: 'Diabetic',
          ),
          Category(
            image_location: 'images/cats/gastric.jpeg',
            image_caption: 'Gastritis',
          ),
          Category(
            image_location: 'images/cats/vitamins.jpg',
            image_caption: 'Vitamins',
          ),
          Category(
            image_location: 'images/cats/antibiotics.jpg',
            image_caption: 'Anti-Biotic',
          ),
          Category(
            image_location: 'images/cats/opthalmic.jpg',
            image_caption: 'Ophthalmic',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              height: 100.0,
              width: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
            ),
          ),
        ),
      ),
    );
  }
}
