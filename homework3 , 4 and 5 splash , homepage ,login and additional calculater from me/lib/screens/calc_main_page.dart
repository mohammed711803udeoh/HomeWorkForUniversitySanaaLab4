import 'package:flutter/material.dart';
import 'package:audioplayer/screens/advance_calculator.dart';
import 'package:audioplayer/screens/simple_calculator_1.dart';
import 'package:audioplayer/screens/simple_calculator_2.dart';

class CalcMainPage extends StatefulWidget {
  const CalcMainPage({super.key});

  @override
  State<CalcMainPage> createState() => _CalcMainPageState();
}

class _CalcMainPageState extends State<CalcMainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffc83cef),
          centerTitle: true,
          title: Text(
            "الحاسبات",
            style: TextStyle(
              fontSize: 24,
              fontFamily: "Tajawal",
              color: Colors.white,
            ),
          ),
          // toolbarHeight: 0,
          bottom: TabBar(
            dividerColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                child: Column(
                  children: [Text("data"), Icon(Icons.add_alert_rounded)],
                ),
              ),
              Tab(child: Icon(Icons.person)),
              Tab(child: Icon(Icons.search)),
            ],
          ),
        ),
        body: TabBarView(
          children: [SimpleCalculator(), SimpleCalculator2(), SmallCalc()],
        ),
      ),
    );
  }
}
