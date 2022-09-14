import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Homepage()));
}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Center(
        child: Text(
          "Welcome to Homepage",
          style: TextStyle(fontSize: 24),
        ),
      ) ,
    );
  }

}