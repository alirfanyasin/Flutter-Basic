import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});
  late String data;

  @override
  void initState() {
    data = "Belum ada data";
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP REQUEST - DELETE"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              var response = await http.get(
                Uri.parse("https://reqres.in/api/users/2"),
              );

              Map<String, dynamic> myBody = json.decode(response.body);

              print(myBody);

              setState(() {
                data =
                    "Akun :  ${myBody['data']['first_name']} ${myBody['data']['last_name']}";
              });
            },
            icon: Icon(Icons.get_app),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(data),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: () async {
              var response = await http.delete(
                Uri.parse("https://reqres.in/api/users/2"),
              );

              print(response.statusCode);

              if (response.statusCode == 204) {
                setState(() {
                  data = "Belum ada data";
                });
              }
            },
            child: Text("DELETE"),
          ),
        ],
      ),
    );
  }
}
