import 'package:flutter/material.dart';

// Ada dua cara menggunakan tabBar
/*
  Yaitu dengan widget DefaultTabController yang membungkus scafold
  atau dengan mengggunakan controller biasa
*/

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabControler = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        centerTitle: false,
        backgroundColor: Colors.teal,
        bottom: TabBar(
          controller: tabControler,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt_outlined),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabControler,
        children: [
          Center(
            child: Text("Ini halaman camera"),
          ),
          ListView.builder(
            itemCount: 20,
            padding: EdgeInsets.all(20),
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  // color: Colors.amber,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(80)),
                        color: Colors.blueAccent,
                        image: DecorationImage(
                            image: AssetImage("assets/image.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Irfan Yasin",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Halo Irfan",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          Center(
            child: Text("Ini halaman Status"),
          ),
          Center(
            child: Text("Ini halaman Calls"),
          ),
        ],
      ),
    );
  }
}
