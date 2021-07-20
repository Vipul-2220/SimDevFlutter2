import 'package:flutter/material.dart';
import 'Categories.dart';

class ViewCategories extends StatefulWidget {
  const ViewCategories({Key? key}) : super(key: key);

  @override
  _ViewCategoriesState createState() => _ViewCategoriesState();
}

class _ViewCategoriesState extends State<ViewCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Categories("images/mentshirt.png", 'Clothes'),
          Categories("images/dresses.jpg", 'Dresses'),
          Categories("images/shoes.jpg", 'Shoes'),
          Categories("images/ladiesbag.jpg", 'Bags'),
          Categories("images/hats.jpg", 'Hats'),
          Categories("images/pants.jpg", 'Pants'),
          Categories("images/watches.jpg", 'Watches'),
        ],
      ),
    );
  }
}
