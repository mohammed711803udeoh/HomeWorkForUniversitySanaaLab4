import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('الصفحة الرئيسية'), // أضيف عنوان للتطبيق
          ),
          body: ListView(
            padding: EdgeInsets.all(12),
            scrollDirection: Axis.vertical,
              children: [
                FunContainer(title: 'صوره رقم 0', subTitle: "اااا", counter: 5,color: Colors.green),
                FunContainer(title: 'صوره رقم 1', subTitle: "اااا", counter: 5,image: "assets/image/1.png",color: Colors.amberAccent),
                FunContainer(title: 'صوره رقم 2', subTitle: "اااا", counter: 5,color: Colors.amber),
                FunContainer(title: 'صوره رقم 3', subTitle: "اااا", counter: 5,color: Colors.blue),
              ],
          ),
        ),
      ),
    );
  }
  Widget FunContainer({
   required String title,required subTitle,required int counter,
    image = "assets/image/0.jpg",color = Colors.white,
  }){
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