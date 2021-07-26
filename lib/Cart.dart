import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  int itemCount;
  String itemName;
  String url;
  String size;
  int price;
  int originalPrice;
  int count;

  Cart(this.itemCount, this.itemName, this.url, this.size, this.price,
      this.originalPrice, this.count);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    int p = widget.price;
    int op = widget.originalPrice;
    int ic = widget.itemCount;
    return Container(
      height: 120.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.red,
            height: 80.0,
            width: 80.0,
            child: Image(
              image: AssetImage(widget.url),
              fit: BoxFit.cover,
            ),
          ),
          // SizedBox(
          //   width: 10.0,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.itemName,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'PlayfairDisplay',
                      ),
                    ),
                    //SizedBox(width: 100,),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),

              Row(
                children: [
                  Text(
                    'Size: ',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black45,
                    ),
                  ),
                  // SizedBox(width: 5.0,),
                  Text(
                    widget.size,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Rs. $p',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Text(
                    'Rs. $op',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        decoration: TextDecoration.lineThrough),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.itemCount--;
                      });
                    },
                    icon: Icon(
                      Icons.remove_circle_outline,
                      color: Colors.black45,
                      size: 20,
                    ),
                  ),
                  Text(
                    '$ic',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.itemCount++;
                      });
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Color(0xff0D41E1),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CartView extends StatefulWidget {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      // Color(0xffeeeeee),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xfff6f6f6),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Cart ",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'PlayfairDisplay',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "(3)",
              style: TextStyle(
                color: Colors.black45,
                fontFamily: 'PlayfairDisplay',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Container(
            child: Column(
              children: [
                Cart(1, 'Men\'s Jacket', 'images/items/pumaHoodie1.jpg', 'Large',
                    4699, 5699, 3),
                Cart(1, 'Men\'s Shirt', 'images/items/menshirt.jpg', 'Large', 1899,
                    2499, 3),
                Cart(1, 'Men\'s Chinos', 'images/items/menchinos.jpg', 'Large',
                    1999, 3599, 3),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                    ),
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: InputBorder.none,
                          hintText: 'Promo Code',
                          hintStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 18.0,
                          ),
                          suffixIcon: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff0D41E1),
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: Colors.black45,
                                )),
                            //height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              'Rs. 8597',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              'Rs. 120',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xfff6f6f6),
                        height: 40.0,
                        child: Center(
                          child: Text(
                            "-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -",
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bag Total',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              'Rs. 8717',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff0D41E1),
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: Colors.black45,
                            ),
                          ),
                          height: 70,
                          child: Center(
                            child: Text(
                              'Proceed To Checkout',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
