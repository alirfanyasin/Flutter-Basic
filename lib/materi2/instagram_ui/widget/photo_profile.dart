import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, Colors.amber],
            ),
          ),
        ),
        Container(
          width: 95,
          height: 95,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80), color: Colors.white),
        ),
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: Colors.grey[400],
            image: DecorationImage(
                image: AssetImage("assets/image.jpg"), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
