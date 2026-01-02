import 'package:flutter/material.dart';

class SimpleCalculator2 extends StatefulWidget {
  const SimpleCalculator2({super.key});

  @override
  State<SimpleCalculator2> createState() => _SimpleCalculator2State();
}

class _SimpleCalculator2State extends State<SimpleCalculator2> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double result = 0;

  @override
  void dispose() {
    num1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: 310,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color(0xffe4e4e4),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding:  EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 20),
                TextFormField(
                  controller: num1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ), // أو BorderSide.none
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hint: Text("ادخل الرقم الأول"),
                  ),
                ),

                SizedBox(height: 20),
                TextFormField(
                  controller: num2,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ), // أو BorderSide.none
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hint: Text("ادخل الرقم الثاني"),
                  ),
                ),
                SizedBox(height: 20),
                Text("${result}"),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      result =
                          double.parse(num1.text) +
                          double.parse(num2.text);
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffc83cef),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "النتيجة",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Tajawal",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
