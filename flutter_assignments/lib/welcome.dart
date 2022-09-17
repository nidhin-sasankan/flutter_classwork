import 'package:flutter/material.dart';
import 'package:flutter_assignments/register.dart';

import 'login.dart';

void main(){
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       body: Center(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.fromLTRB(30, 70, 30, 30),
               child: Text("Welcome", style: TextStyle(fontSize: 28),),
             ),
             Padding(
               padding: const EdgeInsets.all(30.0),
               child: Image(
                 image: AssetImage("assets/images/welcome.jpg"),
               )
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(30, 150, 30, 0),
               child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     minimumSize: Size.fromHeight(40)),
                 onPressed: () {},
                 child: Text("Login"),
               ),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
               child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     minimumSize: Size.fromHeight(40)),
                 onPressed: () {},
                 child: Text("Sign up"),
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }
  
}
