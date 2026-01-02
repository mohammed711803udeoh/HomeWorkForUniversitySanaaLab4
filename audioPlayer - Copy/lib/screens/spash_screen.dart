import 'package:audioplayer/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SpashScreen extends StatefulWidget {

  const SpashScreen({super.key});



  @override
  State<SpashScreen> createState() => _SpashScreenState();


}

class _SpashScreenState extends State<SpashScreen> {


  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => MainPage()),

      );
    });    super.initState();
  }
  @override
  void dispose (){
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,

    );
    super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 40,
          children: [
            Image.asset("assets/images/0.jpg"),
            Text(
              "اهلاً وسهلاً",
              style: TextStyle(fontSize: 30, fontFamily: "Tajawal"),
            ),
          ],
        ),
      ),
    );
  }
}
