import 'package:flutter/material.dart';
import 'package:sim_dev_task2/Categories.dart';
import 'package:sim_dev_task2/Items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.sort_rounded,
          color: Colors.black,
          size: 30.0,
        ),
        title: ListTile(
          title: Center(
            child: Text(
              'ISSACS',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
              ),
            ),
          ),
          trailing: Icon(
            Icons.local_mall_outlined,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,
            color: Colors.black38,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drag_indicator_outlined,
              color: Colors.black38,
            size: 30.0,
            ),
              label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_up_outlined,
              color: Colors.black38,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall_outlined,
              color: Colors.black38,
              size: 30.0,
            )
            ,label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded,
              color: Colors.black38,
              size: 30.0,
            )
            ,label: '',
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Card(
              elevation: 10.0,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      size: 30.0,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    )),
              ),
            ),
          ),
          Categories(),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrivals",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'PlayfairDisplay',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Items(),
        ],
      ),
    );
  }
}
