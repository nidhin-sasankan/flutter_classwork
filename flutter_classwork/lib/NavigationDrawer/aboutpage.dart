import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget{

  final String pageTextChanged;

  AboutPage(this.pageTextChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTextChanged),),
      body: Center(
        child: Text(pageTextChanged,style: TextStyle(color: Colors.red,fontSize: 30),),
      ),
    );
  }
}