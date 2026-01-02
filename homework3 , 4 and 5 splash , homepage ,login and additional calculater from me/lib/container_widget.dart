import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget{
  
  ContainerWidget({
    required this.title,
    required this.subTitle,
    required this.counter,
    this.image = "assets/images/0.jpg",
    this.color = Colors.white,
    required this.onClick,

  });

   String title;
   String subTitle;
   int counter;
   String image;
   Color color;
   Function onClick;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        onTap: () {},onLongPress: (){},
        title: Text(title),
        subtitle: Text(subTitle),
        leading:CircleAvatar(
          radius: 30,

          backgroundImage: AssetImage(image),  // الحل الصحيح
        ),
        trailing: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.circular(50),

          ),
          child: Text(counter.toString(),style: TextStyle(color:Colors.red,),),
        ),

      ),

    );



  }


}