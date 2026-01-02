import 'package:flutter/material.dart';
import 'dart:math';
class DiceExample extends StatefulWidget {
  const DiceExample({super.key});

  @override
  State<DiceExample> createState() => _DiceExampleState();
}

class _DiceExampleState extends State<DiceExample> {
  var rightDiceNumber=5;
  var leftDiceNumber=5;

  void _changeDice(){
    setState((){
      rightDiceNumber=Random().nextInt(6)+1;
      leftDiceNumber=Random().nextInt(6)+1;
    });
    void _changeSingleDice(bool isRight) {
      setState(() {
        if (isRight) {
          rightDiceNumber = Random().nextInt(6) + 1;
        } else {
          leftDiceNumber = Random().nextInt(6) + 1;
        }
      });

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("data"),
        backgroundColor: Colors.grey,
      ),
      body: Center(


        child: Row(

          children: [

            Expanded(child: GestureDetector(
              onTap: _changeDice,
              child: Padding(

                padding: const EdgeInsets.all(12),
                child: Image.asset("assets/images/dice$rightDiceNumber.png"),
              ),
            ),),
            Expanded(child: GestureDetector(


              onTap: _changeDice,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset("assets/images/dice$leftDiceNumber.png"),
              ),
            ),)
          ],
        ),
      ),
    );
  }
}

