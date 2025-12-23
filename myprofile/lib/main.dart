import 'package:audioplayer/ProfileMohammed.dart';
import 'package:audioplayer/homepage.dart';
import 'package:flutter/material.dart';
import 'package:audioplayer/HomeWork2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Audio Player',
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF5F5F5)),
      home: profile(),
    );
  }
}
