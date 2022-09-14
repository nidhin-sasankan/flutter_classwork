import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MaterialApp(
    home: Homescreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home List"),
      ),
      body: ListView(
        children: [
          Text("item 1"),
          Text("item 2"),
          Text("item 3"),
          Text("item 4"),
          Text("item 5"),
        ],
      ),
    );
  }

}