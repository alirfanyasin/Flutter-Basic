import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
        ),
        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.greenAccent,
            ),
            Container(
              color: Colors.blueAccent,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.greenAccent,
            ),
            Container(
              color: Colors.blueAccent,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.greenAccent,
            ),
            Container(
              color: Colors.blueAccent,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.greenAccent,
            ),
            Container(
              color: Colors.blueAccent,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.greenAccent,
            ),
            Container(
              color: Colors.blueAccent,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.greenAccent,
            ),
            Container(
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
