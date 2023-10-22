import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Deleted data successfuly",
                    style: TextStyle(color: Colors.black),
                  ),
                  action: SnackBarAction(label: "Cancel", onPressed: () {}),
                  backgroundColor: Colors.amber,
                  duration: Duration(seconds: 2),
                  margin: EdgeInsets.all(20),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Text("Snack Bar")),
      ),
    );
  }
}
