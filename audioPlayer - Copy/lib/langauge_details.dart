import 'package:flutter/material.dart';

import 'langauege_model.dart';

class LangaugeDetails extends StatelessWidget {
  const LangaugeDetails({super.key, required this.languageModel});

  final LanguageModel languageModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          languageModel.langName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: "Tajawal",
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 40,
          children: [
            Image.asset(languageModel.langImage),
            Text(
              languageModel.langCompany,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "Tajawal",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
