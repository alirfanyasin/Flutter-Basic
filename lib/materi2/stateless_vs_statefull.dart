import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/*
  Stateless => digunakan untuk widget yang static
  Statefull => digunakan untuk widget yang dinamis (berubah-ubah)
 */

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          backgroundColor: Colors.blueAccent,
          title: Text("My App"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // nilai.toString(),
                "$nilai",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print("DIKURANGI");
                        nilai = nilai - 1;
                        print(nilai);
                        setState(() {});
                      },
                      child: Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        print("DITAMBAH");
                        nilai = nilai + 1;
                        print(nilai);
                        setState(() {});
                      },
                      child: Icon(Icons.add))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
