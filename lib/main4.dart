import 'dart:math';

import 'package:first_app/widgets/Kotak.dart';
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
          backgroundColor: Colors.amber,
        ),
        // body: ListView.builder(
        //   itemCount: 10,
        //   itemBuilder: (context, index) => Kotak(
        //       title: "Kotak ke ${index + 1}",
        //       color: Color.fromARGB(255, 100 + Random().nextInt(256),
        //           100 + Random().nextInt(256), 100 + Random().nextInt(256))),
        // ),

        body: GridView.builder(
          itemCount: 50,
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => Container(
            color: Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
          ),
        ),
      ),
    );
  }
}
