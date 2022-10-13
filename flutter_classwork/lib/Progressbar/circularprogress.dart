import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CircleProg(),
  ));
}

class CircleProg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Progressbar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Indeterminate Circular Progressbar"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
                strokeWidth: 5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
