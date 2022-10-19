import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 100, 10, 10),
                child: Text(
                  "Welcome to Dashboard",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image(
                    image: AssetImage("assets/images/welcome.jpg"),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
