import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dashboard UI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color lightBlueBackground = Color(0xFFC0E0F0);

    const Color centerContainerColor = Color(0xFFE0F7FA);

    return Scaffold(
      backgroundColor: lightBlueBackground,
      body: Center(
        child: Container(
          width: 350,
          decoration: BoxDecoration(
            color: centerContainerColor,
            borderRadius: BorderRadius.circular(15.0), // لإضافة زوايا دائرية
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),

          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        _buildTopButton('A', Colors.red),
                        _buildTopButton('B', Colors.orange),
                        _buildTopButton('C', Colors.yellow),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFD4C8E8),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          const Text(
                            'Fancy Section',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 15),

                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  _buildFancyCard('1', const Color(0xFF7B38A8)),
                                  _buildFancyCard('2', const Color(0xFF904EBF)),
                                  _buildFancyCard('3', const Color(0xFFAD6FD9)),
                                ],
                              ),
                              const SizedBox(height: 15),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  _buildFancyCard('4', const Color(0xFFE488D9)),
                                  _buildFancyCard('5', const Color(0xFFE898E0)),
                                  _buildFancyCard('6', const Color(0xFFEDB0E8)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Info Cards',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        _buildInfoCard(
                          value: '23',
                          label: 'Active',
                          valueColor: Colors.teal,
                          cardColor: Colors.white,
                        ),
                        _buildInfoCard(
                          value: '15',
                          label: 'Pending',
                          valueColor: Colors.orange,
                          cardColor: Colors.white,
                        ),
                        _buildInfoCard(
                          value: '7',
                          label: 'Complete',
                          valueColor: Colors.grey,
                          cardColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopButton(String text, Color color) {
    return Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _buildFancyCard(String number, Color color) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required String value,
    required String label,
    required Color valueColor,
    required Color cardColor,
  }) {
    return Container(
      width: 90,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.black12, width: 1),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
