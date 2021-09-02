import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/home/home_page.dart';
import 'package:flutter_maonamassa/images/images_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImagesPage(),
    );
  }
}
