import 'package:flutter/material.dart';

class elevoted_button extends StatelessWidget {
  const elevoted_button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown),
      body: Column(
        children: [
          Text(
            "Team 1",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            "0",
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
           style: ElevatedButton.styleFrom(
             backgroundColor: Colors.orange
           ),
            onPressed: () {},
            child: Text(
              "Add 1 point",
              style: TextStyle(fontWeight: FontWeight.bold),

            ),
          ),
        ],
      ),
    );
  }
}
