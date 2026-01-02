import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
   ContainerWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.counter,
    this.image="assets/images/2.jpg",
     required this.onClick,
     this.color=Colors.white
  });
  String title;
  String subTitle;
  int counter;
  String image = "assets/images/2.jpg";
  Function onClick;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        onTap: () {
          onClick;
        },
        onLongPress: () {},
        title: Text(title),
        subtitle: Text(subTitle),
        leading: CircleAvatar(radius: 60, child: Image.asset(image)),
        trailing: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            counter.toString(),
            style: TextStyle(color: Colors.brown),
          ),
        ),
      ),
    );
  }
}
