import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sim_dev_task2/Cart.dart';

class showDetails extends StatefulWidget {
  final String itemName;
  final int price;
  final int originalPrice;
  final String url;
  final String url1;
  final String url2;
  bool like;

  showDetails(this.itemName, this.price, this.originalPrice, this.url,
      this.url1, this.url2, this.like);

  @override
  _showDetailsState createState() => _showDetailsState();
}

class _showDetailsState extends State<showDetails> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    int Count = 3;
    String imageUrl = widget.url;
    int p = widget.price;
    int itemCount = 0;
    String size = 'Large';
    Size sizee  = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffeeeeee),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.like = !widget.like;
                  });
                },
                icon: widget.like == true
                    ? Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                )
                    : Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              Stack(children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartView(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.local_mall_outlined,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                    alignment: Alignment.center,
                    child: Text('$Count',
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                  ),
                ),
              ],
              ),
              SizedBox(width: 10.0,),
            ],
          ),
        ],
      ),
      // bottomNavigationBar:
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [

                  Stack(
                    children: [
                      Container(
                        height: 450,
                        width: 400,
                        child: Image(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),

                      Positioned(
                        bottom: 10,
                        left: MediaQuery.of(context).size.width / 2.5,
                        child: Container(
                          child: Text("_____",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        left: 8,
                        top: MediaQuery.of(context).size.height / 4,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_left,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 40.0,
                        left: 90.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffeeeeee),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      imageUrl = widget.url;
                                      print('new Url updated');
                                    });
                                  },
                                  child: Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.black45)
                                    ),
                                    child: Image(
                                      image: AssetImage(widget.url),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      imageUrl = widget.url1;
                                      print('new Url updated');
                                    });
                                  },
                                  child: Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.black45)
                                    ),
                                    child: Image(
                                      image: AssetImage(widget.url1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    imageUrl = widget.url2;
                                    print('new Url updated');
                                  },
                                  child: Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.black45)
                                    ),
                                    child: Image(
                                      image: AssetImage(widget.url2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        right: 8,
                        top: MediaQuery.of(context).size.height / 4,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.itemName,
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'PlayfairDisplay',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Rs. $p',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
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
                            SizedBox(
                              height: 10.0,
                            ),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Color',
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.white70,
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
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Composition',
                                          style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                        Text(
                                          'Silk Bamboo',
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_box_outlined,
                                      color: Colors.white,
                                      size: 40.0,
                                    ),
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}
