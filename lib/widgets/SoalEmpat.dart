import 'package:flutter/material.dart';

class SoalEmpat extends StatelessWidget {
  const SoalEmpat({
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

      // Bisa Menggunakan ClipOval dan Border Radius

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.blueAccent,
            child: Center(
              child: Text("Hello"),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
            child: Center(
              child: Text("Hello"),
            ),
          ),
        ],
      ),
    );
  }
}
