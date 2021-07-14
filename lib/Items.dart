import 'package:flutter/material.dart';
import 'package:sim_dev_task2/ItemDetails.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {

  bool like = false;

  Widget itemShow(String itemName, int price, int originalPrice, String url) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    showDetails(itemName,price,url),
              ),
            );
          },
          child: Card(
            elevation: 20.0,
            child: Image(
              height: 200,
              width: 190,
              image: AssetImage('$url'),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  '$itemName',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Rs. $price',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      '$originalPrice',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  like = true;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                size: 30,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          itemShow('Men\'s Jacket', 4699, 5699, 'images/items/pumaHoodie1.jpg'),
          itemShow('Louis Phillipe\n Men\'s Shirt', 1899, 2499,
              'images/items/menshirt.jpg'),
          itemShow('Van Heusen\n Men\'s Chinos', 1999, 3599,
              'images/items/menchinos.jpg'),
        ]),
        Column(
          children: [
            itemShow('Women\'s Jacket', 7699, 11999,
                'images/items/womenjacket1.jpg'),
            itemShow(
                'Women\'s Shirt', 1499, 2899, 'images/items/womenshirt.jpg'),
            itemShow(
                'Women\'s Jeans', 2699, 3599, 'images/items/womenjeans.jpg'),
          ],
        ),
      ],
    );
  }
}
