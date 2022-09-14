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
          Card(
            color: Colors.greenAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/02/79/66/93/360_F_279669366_Lk12QalYQKMczLEa4ySjhaLtx1M2u7e6.jpg"),
              ),
              // leading: Icon(Icons.search),
              title: Text("Search"),
              trailing: Wrap(
                spacing: 10,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message)
                ],
              ),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Clicked")));
              },
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.greenAccent,
            child: ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: (){
              Fluttertoast.showToast(
                msg: "Showing Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM);
              },
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.greenAccent,
            child: ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.greenAccent,
            child: ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
            ),
          ),

          // Text("item 1"),
          // Text("item 2"),
          // Text("item 3"),
          // Text("item 4"),
          // Text("item 5"),
        ],
      ),
    );
  }

}