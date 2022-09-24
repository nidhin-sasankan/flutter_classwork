import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: GrdViewDrwr()));
}

class GrdViewDrwr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid with image and text"),
      ),
        body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(100, (index) {
          return Center(
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://picsum.photos/500/500?random=$index',
                  width: 200,
                  height: 137,
                ),
                Text(
                  'Image $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
