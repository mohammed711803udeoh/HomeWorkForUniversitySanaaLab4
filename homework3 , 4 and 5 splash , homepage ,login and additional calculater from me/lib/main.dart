import 'package:audioplayer/screens/dice_example.dart';
import 'package:audioplayer/screens/elevoted_button.dart';
import 'package:flutter/material.dart';
import 'package:audioplayer/screens/languages_list_screen.dart';
import 'package:audioplayer/screens/main_page.dart';
import 'package:audioplayer/screens/advance_calculator.dart';
import 'package:audioplayer/screens/spash_screen.dart';

import 'screens/login_srceen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Tajawal"
      ),
      home: Directionality(textDirection: TextDirection.rtl,
      child: SpashScreen()),
      debugShowCheckedModeBanner: false,

    );
  }
}
