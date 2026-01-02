import 'package:flutter/material.dart';

class listOfDeitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details', style: TextStyle(color: Colors.white)),
        
        backgroundColor: const Color.fromARGB(255, 14, 12, 0),
        centerTitle: true,
        
     
      ),
      body: Center(
        
        child: Text('Details Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
