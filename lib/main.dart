import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      body: ListView(
        children: [
          SizedBox(height: 10.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
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
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
