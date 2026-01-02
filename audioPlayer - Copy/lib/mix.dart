import 'package:flutter/material.dart';

import 'conatiner_widget.dart';

class MixScreen extends StatelessWidget {
  const MixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.brown),
                  currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: CircleAvatar(
                      child: Image.asset("assets/images/0.jpg"),
                    ),
                  ),
                  accountName: Text("Flutter"),
                  accountEmail: Text("flutter@gmail.com"),
                ),
                container_widget(
                  title: "الفلاتر",
                  subTitle: "فلاتر از فريم ورك",
                  counter: 33,
                  onClick: () {},
                ),
                container_widget(
                  title: "الفلاتر",
                  subTitle: "فلاتر از فريم ورك",
                  counter: 33,
                  onClick: () {},
                ),
                container_widget(
                  title: "الفلاتر",
                  subTitle: "فلاتر از فريم ورك",
                  counter: 33,
                  onClick: () {},
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add_alert_rounded, color: Colors.white),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.brown,
          appBar: AppBar(backgroundColor: Colors.brown),
          body: ListView(
            padding: EdgeInsets.all(12),
            scrollDirection: Axis.vertical,
            children: [
              container_widget(
                title: "الفلاتر",
                subTitle: "فلاتر از فريم ورك",
                counter: 33,
                onClick: () {},
              ),
              container_widget(
                title: "دارت",
                subTitle: "فلاتر از فريم ورك",
                counter: 23,
                onClick: () {},
              ),
              container_widget(
                title: "سي شارب",
                subTitle: "فلاتر از فريم ورك",
                counter: 4,
                color: Colors.blue,
                onClick: () {
                  print("wlecome anwer ");
                },
              ),
              container_widget(
                title: "بي اتش بي",
                subTitle: "فلاتر از فريم ورك",
                counter: 53,
                image: "assets/images/3.jpg",
                onClick: () {},
              ),
              container_widget(
                title: "الفلاتر",
                subTitle: "فلاتر از فريم ورك",
                counter: 33,
                onClick: () {},
              ),
              container_widget(
                title: "الفلاتر",
                subTitle: "فلاتر از فريم ورك",
                counter: 33,
                onClick: () {},
              ),
              ContainerWidget(
                onClick: (){},
                title: "sdlfj",
                subTitle: "sldjfsfdjsldjflsjl",
                counter: 12,
                image: "assets/images/2.jpg",
                color: Colors.greenAccent,
              ),
              MaterialButton(onPressed: () {}, child: Text("dsfsf")),
              ElevatedButton(onPressed: () {}, child: Text("dsfsf")),
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_sharp)),
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            ],
          ),
        ),
      ),
    );
  }

  Widget container_widget({
    required String title,
    required subTitle,
    required int counter,
    image = "assets/images/2.jpg",
    required Function onClick,
    color = Colors.white,
  }) {
    return GestureDetector(
      onTap: onClick(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          onTap: () {},
          onLongPress: () {},
          title: Text(title),
          subtitle: Text(subTitle),
          leading: CircleAvatar(child: Image.asset(image), radius: 60),
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
      ),
    );
  }
}
