import 'package:flutter/material.dart';
import 'package:audioplayer/screens/simple_calculator_1.dart';

import 'calc_main_page.dart';
import 'languages_list_screen.dart';
import 'login_srceen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List _pages = [LanguagesListScreen(), LoginScreen(), CalcMainPage()];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color(0xffc83cef),
            borderRadius: BorderRadius.circular(12),
          ),
          child: BottomNavigationBar(
            backgroundColor: Color(0xffc83cef),
            onTap: (currentIndex) {
              setState(() {
                index = currentIndex;
              });
            },
            currentIndex: index,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "الرئيسية",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                label: "الملف الشخصي",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "الاعدادات",
              ),
            ],
          ),
        ),
        body: _pages [index],
        ),
      // ),
    );
  }
}
