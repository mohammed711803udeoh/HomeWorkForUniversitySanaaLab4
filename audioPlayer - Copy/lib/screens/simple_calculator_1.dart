import 'package:flutter/material.dart';
import 'package:audioplayer/screens/advance_calculator.dart';

import 'languages_list_screen.dart';

class SmallCalc extends StatefulWidget {
  const SmallCalc({super.key});

  @override
  State<SmallCalc> createState() => _SmallCalcState();
}

class _SmallCalcState extends State<SmallCalc> {

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            GestureDetector(
              onTap: (){
               setState(() {
                 counter++;
                 print(counter);
               });
              },
              child: Container(
                width: 90,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xffc83cef),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Tajawal",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Text("${counter}", style: TextStyle(fontSize: 55, fontFamily: "Tajawal")),
            GestureDetector(
              onTap: (){
              setState(() {
                counter--;
                print(counter);
              });
              },
              child: Container(
                width: 90,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xffc83cef),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Tajawal",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
