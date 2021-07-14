import 'package:flutter/material.dart';

int count = 1;

Widget showDetails(
    BuildContext context, String itemName, String price, String url) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
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
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 30.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.local_mall_outlined,
            color: Colors.black,
            size: 30.0,
          ),
        ),
      ],
    ),
    body: Container(
      child: Column(
        children: [
          Image(
            height: 450,
            image: AssetImage('$url'),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: ListTile(
                  title: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$itemName',
                            style: TextStyle(
                              fontSize: 35.0,
                              fontFamily: 'PlayfairDisplay',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Rs. $price',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50.0,
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        width: 2.0,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Size',
                                            style: TextStyle(
                                              color: Colors.black45,
                                            ),
                                          ),
                                          Text(
                                            'Large',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 50.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        width: 2.0,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                showDetails(context, itemName, price, url);
                                                count--;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.remove,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                          ),
                                          Text(
                                            '$count',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                showDetails(context, itemName, price, url);
                                                count++;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  Container(
                                    height: 50.0,
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        width: 2.0,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Color',
                                            style: TextStyle(
                                              color: Colors.black45,
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            thickness: 10.0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 50.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        width: 2.0,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                showDetails(context, itemName, price, url);
                                                count--;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.remove,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                          ),
                                          Text(
                                            '$count',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                showDetails(context, itemName, price, url);
                                                count++;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                ],
                              )
                            ],
                          ),

                          Container(
                            width: 80,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Color(0xff0D41E1),
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                width: 2.0,
                                color: Colors.black45,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_box_outlined,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

void setState(VoidCallback fn) {}
