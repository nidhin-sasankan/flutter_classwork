import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Horizonprog(),
  ));
}

class Horizonprog extends StatefulWidget {
  @override
  State<Horizonprog> createState() => _HorizonprogState();
}

class _HorizonprogState extends State<Horizonprog> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal Progressbar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "Indeterminate Progress Indicator",
              style: TextStyle(fontSize: 18),
            ),
            margin: EdgeInsets.all(20),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: LinearProgressIndicator(
                minHeight: 5,
                backgroundColor: Colors.grey,
                color: Colors.purple,
              ),
            ),
          ),
          Container(
            child: Text("Determinate Progress Indicator",
                style: TextStyle(fontSize: 18)),
            margin: EdgeInsets.all(20),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.green,
              minHeight: 5,
              value: value,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              child: Text("Download File"),
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white, primary: Colors.green),
              onPressed: () {
                value = 0;
                downloadData();
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }

  void downloadData() {
    new Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (value == 1) {
          timer.cancel();
        } else {
          value = value + 0.1;
        }
      });
    });
  }
}
