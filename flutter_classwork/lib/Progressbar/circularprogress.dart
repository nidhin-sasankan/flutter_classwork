import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CircleProg(),
  ));
}

class CircleProg extends StatefulWidget {
  @override
  State<CircleProg> createState() => _CicleprogState();
}

class _CicleprogState extends State<CircleProg> {
  double value  = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Circular Progress Indicator"),
        ),
        body: Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 20),
            child: Column(
                children:[
                  Container(
                    child: Text("Indeterminate Progress Indicator",style: TextStyle(fontSize: 18),),
                    margin: EdgeInsets.all(20),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Colors.purple,
                      strokeWidth: 5,
                    ),
                  ),
                  Container(
                    child: Text("Determinate Progress Indicator",style: TextStyle(fontSize: 18)),
                    margin: EdgeInsets.all(20),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Colors.green,
                      strokeWidth: 5,
                      value: value,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                      child: Text("Download File"),
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.green
                      ),
                      onPressed: ()
                      {
                        value = 0;
                        downloadData();
                        setState(() {

                        });
                      },
                    ),
                  )
                ]
            )
        )
    );
  }

  void downloadData(){
    new Timer.periodic(
        Duration(seconds: 1),
            (Timer timer){
          setState(() {
            if(value == 1) {
              timer.cancel();
            }
            else {
              value = value + 0.1;
            }
          });
        }
    );
  }
}