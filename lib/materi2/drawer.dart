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
        title: Text("Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 80,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Text(
                "Dashboard",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                    onTap: () => print("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
