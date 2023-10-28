import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  // Attribute
  final String title;
  final String value;

  // Constructor
  Information(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(title),
            ],
          ),
        ],
      ),
    );
  }
}
