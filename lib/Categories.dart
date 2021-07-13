import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Colors.white70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                )
              ],
            ),
            child: ClipOval(
              child: Image(
                height: 60.0,
                width: 60.0,
                fit: BoxFit.cover,
                image: AssetImage("images/mentshirt.png"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                )
              ],
            ),
            child: ClipOval(
              child: Image(
                height: 60.0,
                width: 60.0,
                fit: BoxFit.cover,
                image: AssetImage("images/dresses.jpg"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                  )
                ],
            ),
            child: ClipOval(
              child: Image(
                height: 80.0,
                width: 80.0,
                fit: BoxFit.cover,
                image: AssetImage("images/shoes.jpg"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                  )
                ],
            ),
            child: ClipOval(
              child: Image(
                height: 60.0,
                width: 60.0,
                fit: BoxFit.cover,
                image: AssetImage("images/ladiesbag.jpg"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                )
              ],
            ),
            child: ClipOval(
              child: Image(
                height: 60.0,
                width: 60.0,
                fit: BoxFit.cover,
                image: AssetImage("images/hats.jpg"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                )
              ],
            ),
            child: ClipOval(
              child: Image(
                height: 60.0,
                width: 60.0,
                fit: BoxFit.cover,
                image: AssetImage("images/pants.jpg"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                )
              ],
            ),
            child: ClipOval(
              child: Image(
                height: 60.0,
                width: 60.0,
                fit: BoxFit.cover,
                image: AssetImage("images/watches.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
