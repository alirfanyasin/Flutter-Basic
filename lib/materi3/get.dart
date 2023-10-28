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
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String id;
  late String name;
  late String email;

  @override
  void initState() {
    // TODO: implement initState
    id = "";
    name = "";
    email = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP REQUEST - GET"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ID : $id",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "NAME : $name",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "EMAIL : $email",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var myRess = await http.get(
                  Uri.parse("https://reqres.in/api/users/1"),
                );

                if (myRess.statusCode == 200) {
                  print("Success");
                  print(myRess.statusCode);
                  Map<String, dynamic> data =
                      json.decode(myRess.body) as Map<String, dynamic>;
                  setState(() {
                    id = data['data']['id'].toString();
                    name =
                        "${data['data']['first_name']} ${data['data']['last_name']}";
                    email = data['data']['email'].toString();
                  });
                } else {
                  print("Error ${myRess.statusCode}");
                  // setState(() {
                  //   dataBody = "Error ${myRess.statusCode}";
                  // });
                }
              },
              child: Text("GET DATA"),
            ),
          ],
        ),
      ),
    );
  }
}
