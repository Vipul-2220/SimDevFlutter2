import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final String url;
  final String name;
  const Categories(this.url, this.name);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 50,
      // height: 68,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black12),
            ),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(widget.url),
            ),
          ),
          Text(widget.name),
        ],
      ),
    );
  }
}
