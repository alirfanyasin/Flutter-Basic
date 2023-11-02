import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Future builder digunakan untuk get data secara langsung pada saat halamannya di reload

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
  // const HomePage({super.key});

  List<Map<String, dynamic>> allUser = [];

  Future getAllUser() async {
    try {
      var response = await http.get(
        Uri.parse("https://reqres.in/api/users?page=2"),
      );
      List data = (json.decode(response.body) as Map<String, dynamic>)['data'];
      data.forEach((element) {
        allUser.add(element);
      });
    } catch (e) {
      print("Terjadi Kesalahan");
      print(e);
    }

    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getAllUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("Loading..."),
            );
          }

          if (allUser.length == 0) {
            return Center(
              child: Text("Tidak ada data"),
            );
          }

          return ListView.builder(
            itemCount: allUser.length,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[300],
                backgroundImage: NetworkImage("${allUser[index]['avatar']}"),
              ),
              title: Text(
                  "${allUser[index]['first_name']} ${allUser[index]['last_name']}"),
              subtitle: Text("${allUser[index]['email']}"),
            ),
          );
        },
      ),
    );
  }
}
