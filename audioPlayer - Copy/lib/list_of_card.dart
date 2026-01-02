import 'package:flutter/material.dart';

class CardsExample extends StatelessWidget {
  const CardsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Text(
            "حكم ودرر",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Tajawal",
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/0.jpg",
                            width: 80,
                            height: 80,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        radius: 42,
                        backgroundColor: Colors.brown,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "خذ الحكمة من افواه المجانين",
                        style: TextStyle(fontSize: 16, fontFamily: "Tajawal"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/2.jpg",
                            width: 80,
                            height: 80,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        radius: 42,
                        backgroundColor: Colors.brown,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "الأيمان يمان والحكمة يمانية",
                        style: TextStyle(fontSize: 16, fontFamily: "Tajawal"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/1.png",
                            width: 80,
                            height: 80,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        radius: 42,
                        backgroundColor: Colors.brown,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "هذا المستخدم مخليها على الله",
                        style: TextStyle(fontSize: 16, fontFamily: "Tajawal"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/3.jpg",
                            width: 80,
                            height: 80,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        radius: 42,
                        backgroundColor: Colors.brown,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "البس لباس التقوى واتسلح بالايمان",
                        style: TextStyle(fontSize: 14, fontFamily: "Tajawal"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/4.png",
                            width: 80,
                            height: 80,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        radius: 42,
                        backgroundColor: Colors.brown,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "اصرف مافي الجيب واشحت بكره عادي",
                        style: TextStyle(fontSize: 14, fontFamily: "Tajawal"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
