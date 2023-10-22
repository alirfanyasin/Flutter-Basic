import 'package:flutter/material.dart';

class SoalTiga extends StatelessWidget {
  const SoalTiga({
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

      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(250),
            color: Colors.blueAccent,
          ),
          child: Center(
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
