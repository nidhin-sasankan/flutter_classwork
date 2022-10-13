import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Horizonprog(),));
}

class Horizonprog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal Progressbar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Indeterminate Progressbar"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: LinearProgressIndicator(
                minHeight: 5,
                backgroundColor: Colors.black12,
              ),
            ),
          )
        ],
      ),
    );
  }
}