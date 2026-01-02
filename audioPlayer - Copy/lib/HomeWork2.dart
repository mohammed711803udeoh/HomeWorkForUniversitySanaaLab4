import 'package:flutter/material.dart';

class homeWork extends StatelessWidget {
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.list),color: Colors.white,),
          title: Text(
            "حكم ودرر",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.brown,
        body: ListView(
          padding: EdgeInsets.all(15),
          scrollDirection: Axis.vertical,

          children: [
            FunctionContainer(
              title: "خذ الحكمه من افواه المجانين ",
              image: "assets/images/1.png",
            ),
            FunctionContainer(
              title: "الايمان يماني والحكمه يمانيه  ",
              image: "assets/images/6.png",
            ),
            FunctionContainer(
              title: "خذ الحكمه من افواه المجانين ",
              image: "assets/images/0.jpg",
            ),
            FunctionContainer(
              title: "خذ الحكمه من افواه المجانين ",
              image: "assets/images/1.png",
            ),
          ],
        ),
      ),
    );
  }

  Widget FunctionContainer({required String title, image = ""}) {
    return Container(
      height: 90, // زيادة الارتفاع
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Colors.black, width: 2.2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 15),

          // تحسين المسافات الداخلية
          title: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          leading: CircleAvatar(
            radius: 50, // الحجم الكلي (بما فيه الإطار)
            backgroundColor: Colors.black, // لون الإطار

            child: CircleAvatar(
              radius: 25, // حجم الصورة (أصغر قليلاً ليبقى الإطار مرئياً)
              backgroundImage: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
