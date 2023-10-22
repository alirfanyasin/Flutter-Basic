import 'package:flutter/material.dart';

class SoalLima extends StatelessWidget {
  const SoalLima({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        backgroundColor: Colors.amber,
        title: Text("My App"),
        actions: [
          IconButton(
              onPressed: () {
                print("Klik More");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),

      // Bisa Menggunakan ClipOval dan Border Radius

      body: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.bottomLeft,
                width: 100,
                height: 150,
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Hello ${index + 1}",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                    // image: DecorationImage(image: AssetImage("assets/image.jpg"))),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://picsum.photos/id/${777 + index}/200/300"))),
              )),
    );
  }
}
