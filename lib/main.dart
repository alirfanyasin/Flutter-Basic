import 'package:flutter/material.dart';
// import './widgets/SoalSatu.dart';
// import './widgets/SoalDua.dart';
// import './widgets/SoalTiga.dart';
// import './widgets/SoalEmpat.dart';
// import './widgets/SoalLima.dart';
import './widgets/SoalEnam.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SoalSatu(),
      home: SoalEnam(),
    );
  }
}
