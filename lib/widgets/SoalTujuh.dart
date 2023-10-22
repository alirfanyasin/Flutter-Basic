import 'dart:math';

import 'package:flutter/material.dart';

class SoalTujuh extends StatelessWidget {
  const SoalTujuh({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        backgroundColor: Colors.amber,
        title: Text("My App"),
        actions: [
          IconButton(
              onPressed: () {
                print("Klik More");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) => Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) => Container(
                width: 100,
                height: 130,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
