import 'dart:math';

import 'package:flutter/material.dart';
// import './widgets/Kotak.dart';

// Mapping

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Kotak> allItems = List.generate(
    10,
    (index) => Kotak(
        title: "Biru",
        color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
            Random().nextInt(256))),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extract Widget"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: allItems,
          ),
        ),
      ),
    );
  }
}
