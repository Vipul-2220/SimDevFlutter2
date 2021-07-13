import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Card(
              elevation: 20.0,
              child: Image(
                height: 200,
                width: 190,
                image: AssetImage('images/items/pumaHoodie1.jpg'),
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Puma Men\'s jacket\n'
              'Rs. 4699',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Card(
              elevation: 20.0,
              child: Image(
                height: 200,
                width: 190,
                image: AssetImage('images/items/menshirt.jpg'),
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Louis Phillipe\n'
              'Men\'s Formal Shirt\n'
                  'Rs. 1899',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Card(
              elevation: 20.0,
              child: Expanded(
                child: Image(
                  height: 200,
                  width: 190,
                  image: AssetImage('images/items/menchinos.jpg'),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'House of Versace\n'
                  'Men\'s Chinos\n'
                  'Rs. 1999',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Card(
              elevation: 20.0,
              child: Expanded(
                child: Image(
                  height: 200,
                  width: 200,
                  image: AssetImage('images/items/womenjacket1.jpg'),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Zara Women\'s jacket\n'
                  'Rs. 7699',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Card(
              elevation: 20.0,
              child: Expanded(
                child: Image(
                  height: 200,
                  width: 200,
                  image: AssetImage('images/items/womenshirt.jpg'),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Women\'s Long Shirt\n'
                  'Rs. 1499',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Card(
              elevation: 20.0,
              child: Expanded(
                child: Image(
                  height: 200,
                  width: 200,
                  image: AssetImage('images/items/womenjeans.jpg'),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Levis Women\'s Jeans\n'
                  'Rs. 2699',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
