import 'package:flutter/material.dart';

class SoalDua extends StatelessWidget {
  const SoalDua({
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
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
