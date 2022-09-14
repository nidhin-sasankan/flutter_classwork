import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Contactbook(),
  ));
}
class Contactbook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: ListView(
        children: [
          Card(
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
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(""),),
            title: Text("Nidhin "),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(""),),
            title: Text("Nidhin "),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(""),),
            title: Text("Nidhin "),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(""),),
            title: Text("Nidhin "),
            trailing: Icon(Icons.phone),
          )
        ],
      ),
    );
  }
}