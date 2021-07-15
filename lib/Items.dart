import 'package:flutter/material.dart';
import 'package:sim_dev_task2/ItemDetails.dart';

class showItems extends StatefulWidget {

  final String itemName;
  final int price;
  final int originalPrice;
  final String url;
  final String url1;
  final String url2;
  bool like;

  showItems(
      this.itemName,
      this.price,
      this.originalPrice,
      this.url,
      this.url1,
      this.url2,
      this.like);

  @override
  _showItemsState createState() => _showItemsState();
}

class _showItemsState extends State<showItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    showDetails(
                        widget.itemName,
                        widget.price,
                        widget.url,
                        widget.url1,
                        widget.url2,
                        widget.like),
              ),
            );
          },
          child: Card(
            elevation: 20.0,
            child: Image(
              height: 200,
              width: 190,
              image: AssetImage('${widget.url}'),
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
                  '${widget.itemName}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Rs. ${widget.price}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      '${widget.originalPrice}',
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
                  widget.like = !widget.like;
                });
              },
              icon: widget.like == true ? Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ) :
              Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.black,
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
}


class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          showItems('Men\'s Jacket',
              4699,
              5699,
              'images/items/pumaHoodie1.jpg',
              'images/items/pumaHoodie3.jpg',
              'images/items/pumaHoodie4.jpg',
               false,
          ),
          showItems('Louis Phillipe\n Men\'s Shirt',
              1899,
              2499,
              'images/items/menshirt.jpg',
            'images/items/menshirt2.jpg',
            'images/items/menshirt3.jpg',
            false,
          ),
          showItems('Van Heusen\n Men\'s Chinos',
              1999,
              3599,
              'images/items/menchinos.jpg',
            'images/items/menchinos2.jpg',
            'images/items/menchinos3.jpg',
            false,
          ),
        ]),
        Column(
          children: [
            showItems('Women\'s Jacket',
                7699,
                11999,
                'images/items/womenjacket1.jpg',
              'images/items/womenjacket2.jpg',
              'images/items/womenjacket3.jpg',
              false,
            ),
            showItems('Women\'s Shirt',
                1499,
                2899,
                'images/items/womenshirt.jpg',
              'images/items/womenshirt2.jpg',
              'images/items/womenshirt3.jpg',
              false,
            ),
            showItems('Women\'s Jeans',
                2699,
                3599,
                'images/items/womenjeans.jpg',
              'images/items/womenjeans2.jpg',
              'images/items/womenjeans3.jpg',
              false,
            ),
          ],
        ),
      ],
    );
  }
}
