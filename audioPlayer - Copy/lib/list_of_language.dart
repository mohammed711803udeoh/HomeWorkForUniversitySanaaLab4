import 'package:flutter/material.dart';
import 'package:audioplayer/conatiner_widget.dart';
import 'package:audioplayer/data.dart';
import 'package:audioplayer/langauege_model.dart';
import 'package:audioplayer/langauge_details.dart';

class ListOfLanguage extends StatelessWidget {
  const ListOfLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.amber,
            currentIndex: 0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            elevation: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
              BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined), label: "الملف الشخصي"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "الاعدادات"),
            ],
          ),
        ),
        backgroundColor: Color(0xffd8d5d5),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "لغات البرمجة",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Tajawal",
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: Data.lang.length,
            itemBuilder: (context, index) {
              var lang = Data.lang[index];

              return Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LangaugeDetails(languageModel: lang),
                      ),
                    );
                  },
                  onLongPress: () {},
                  title: Text(lang.langName),
                  subtitle: Text(lang.langCompany),
                  leading: CircleAvatar(
                    radius: 60,
                    child: Image.asset(lang.langImage),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("33", style: TextStyle(color: Colors.brown)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
