import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String display = '0';
  double num1 = 0;
  double num2 = 0;
  String operation = '';

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        display = '0';
        num1 = 0;
        num2 = 0;
        operation = '';
      } else if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == '×' ||
          buttonText == '÷') {
        num1 = double.parse(display);
        operation = buttonText;
        display = '0';
      } else if (buttonText == '=') {
        num2 = double.parse(display);

        if (operation == '+') {
          display = (num1 + num2).toString();
        } else if (operation == '-') {
          display = (num1 - num2).toString();
        } else if (operation == '×') {
          display = (num1 * num2).toString();
        } else if (operation == '÷') {
          display = (num1 / num2).toString();
        }

        if (display.endsWith('.0')) {
          display = display.substring(0, display.length - 2);
        }
      } else {
        if (display == '0') {
          display = buttonText;
        } else {
          display = display + buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حاسبة مبسطة', style: TextStyle(fontFamily: "Tajawal",fontSize: 26)),
        centerTitle: true,
        backgroundColor: Color(0xffBCBBBBFF),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Text(
                display,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      _calcButton('7'),
                      _calcButton('8'),
                      _calcButton('9'),
                      _calcButton('÷'),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      _calcButton('4'),
                      _calcButton('5'),
                      _calcButton('6'),
                      _calcButton('×'),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      _calcButton('1'),
                      _calcButton('2'),
                      _calcButton('3'),
                      _calcButton('-'),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      _calcButton('0'),
                      _calcButton('C'),
                      _calcButton('='),
                      _calcButton('+'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _calcButton(String label) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          buttonPressed(label);
        },
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffBCBBBBFF),
          ),
          margin: EdgeInsets.all(4),
          child: Center(child: Text(label, style: TextStyle(fontSize: 24))),
        ),
      ),
    );
  }
}
