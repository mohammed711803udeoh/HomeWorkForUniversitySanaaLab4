import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 216, 227, 242),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2D4059),
          leading: Icon(Icons.arrow_back, size: 35, color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [FunContainer1(), NotificationsContainer(), Container()],
          ),
        ),
      ),
    );
  }

  Widget FunContainer1() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFF3D6CB9),
            radius: 95,

            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 87,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/image/MohammedJubran.jpg"),
              ),
            ),
          ),
          Text(
            "Mohammed Al-Magzi",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D4059),
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                "Programer",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3D6CB9),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFFE8F2FF),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF3D6CB9),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Text(
                          "122",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D4059),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Followers",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(
                          255,
                          80,
                          78,
                          78,
                        ).withOpacity(0.15),
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),

                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Text(
                          "627 ",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D4059),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          " Following",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(
                          255,
                          80,
                          78,
                          78,
                        ).withOpacity(0.15),
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "8 ",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D4059),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Posts",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),

                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,

                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(
                          255,
                          80,
                          78,
                          78,
                        ).withOpacity(0.15),
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],

                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget NotificationsContainer() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              child: Icon(
                Icons.notifications,
                color: const Color.fromARGB(255, 240, 4, 4),
                size: 25,
              ),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Color(0xFFFFE8E9),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            title: Text("Notifications"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Container(
              child: Icon(Icons.person, color: Colors.blue, size: 25),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Color(0xFFE8F0FF),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            title: Text("Account"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            leading: Container(
              child: Icon(Icons.settings),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Color(0xFFE8F0FF),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            title: Text("Settings"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Container(
              child: Icon(Icons.logout),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Color(0xFFE8F0FF),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            title: Text("Logout"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
