import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  title: Text("Halo"),
                  content: Text("Lorem ipsum dolor sit amet"),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                    ElevatedButton(onPressed: () {}, child: Text("Okay")),
                  ],
                ),
              );
            },
            child: Text("Show Dialog")),
      ),
    );
  }
}
