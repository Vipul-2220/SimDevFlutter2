import 'package:flutter/material.dart';
import 'package:sim_dev_task2/Cart.dart';
import 'package:sim_dev_task2/Items.dart';
import 'package:sim_dev_task2/ViewCategories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int Count = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xfff6f6f6),
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
          trailing: Stack(
            children: [
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
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  alignment: Alignment.center,
                  child: Text(
                    '$Count',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: Icon(
            Icons.arrow_upward,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 35.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.drag_indicator_outlined,
                  color: Colors.black38,
                  size: 35.0,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.local_mall_outlined,
                  color: Colors.black38,
                  size: 35.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black38,
                  size: 35.0,
                ),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    size: 30.0,
                  ),
                  hintText: "Search Products",
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    height: 1.8,
                  ),
                ),
              ),
            ),
            ViewCategories(),
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
      ),
    );
  }
}

//
// Positioned(
// bottom: 80,
// child: FloatingActionButton(
// backgroundColor: Colors.blue,
// onPressed: (){},
// child: Icon(
// Icons.arrow_upward,
// color: Colors.black,),
// ),
// ),
