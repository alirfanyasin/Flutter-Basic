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
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: null,
              // isDismissible: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              context: context,
              builder: (context) => Container(
                padding: EdgeInsets.all(10),
                height: 200,
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () => print("Klik Phone"),
                      leading: Icon(Icons.phone),
                      title: Text("Phone"),
                    ),
                    ListTile(
                      onTap: () => print("Klik Share"),
                      leading: Icon(Icons.share),
                      title: Text("Share"),
                    ),
                    ListTile(
                      onTap: () => print("Klik Facebook"),
                      leading: Icon(Icons.facebook_outlined),
                      title: Text("Facebook"),
                    ),
                    ListTile(
                      onTap: () => print("Klik Add"),
                      leading: Icon(Icons.add),
                      title: Text("Add"),
                    )
                  ],
                ),
              ),
            );
          },
          child: Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}
