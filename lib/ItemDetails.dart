import 'package:flutter/material.dart';

class showDetails extends StatefulWidget {

  final String itemName;
  final int price;
  final String url;
  final String url1;
  final String url2;
  bool like;

  showDetails(this.itemName, this.price, this.url, this.url1, this.url2, this.like);

  @override
  _showDetailsState createState() => _showDetailsState();
}

class _showDetailsState extends State<showDetails> {

  int count =1;



  @override
  Widget build(BuildContext context) {

    String imageUrl = widget.url;
    int p = widget.price;

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
              height: 400,
              image: AssetImage(imageUrl),
            ),
            SizedBox(height: 5.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      imageUrl = widget.url;
                      print('new Url updated');
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    child: Image(
                      height: 65,
                      width: 65,
                      image: AssetImage(widget.url),
                    ),
                  ),
                ),
                SizedBox(width: 5.0,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      imageUrl = widget.url1;
                      print('new Url updated');
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    child: Image(
                      height: 65,
                      width: 65,
                      image: AssetImage(widget.url1),
                    ),
                  ),
                ),
                SizedBox(width: 5.0,),
                GestureDetector(
                  onTap: (){
                    imageUrl = widget.url2;
                    print('new Url updated');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    child: Image(
                      height: 65,
                      width: 65,
                      image: AssetImage(widget.url2),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: ListTile(
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.itemName,
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'PlayfairDisplay',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Rs. $p',
                          style: TextStyle(
                            fontSize: 25.0,
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
          ],
        ),
      ),
    );
  }
}





















