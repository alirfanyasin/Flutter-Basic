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
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  String hasilResponse = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP REQUEST - POST"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameController,
            autocorrect: false,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: jobController,
            autocorrect: false,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: "Job",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
            onPressed: () async {
              var myRess = await http.post(
                Uri.parse("https://reqres.in/api/users"),
                body: {"name": nameController.text, "job": jobController.text},
              );

              Map<String, dynamic> data =
                  json.decode(myRess.body) as Map<String, dynamic>;

              setState(() {
                hasilResponse =
                    "NAME \t: ${data['name']} \nJOB \t\t\t\t\t: ${data['job']}";
              });
              print(myRess.body);
            },
            child: Text("Submit"),
          ),
          SizedBox(height: 20),
          Divider(color: Colors.black),
          SizedBox(height: 10),
          Text(hasilResponse),
        ],
      ),
    );
  }
}
