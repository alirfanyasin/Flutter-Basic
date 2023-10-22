import 'package:flutter/material.dart';

// Extract Widget
class Kotak extends StatelessWidget {
  final String title;
  final Color color;

  const Kotak({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: color,
      child: Center(child: Text(title)),
    );
  }
}
