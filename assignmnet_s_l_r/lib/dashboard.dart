import 'package:assignmnet_s_l_r/login.dart';
import 'package:assignmnet_s_l_r/register.dart';
import 'package:flutter/material.dart';

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
               padding: const EdgeInsets.all(30.0),
               child: Text("Welcome", style: TextStyle(fontSize: 28),),
             ),
             Padding(
               padding: const EdgeInsets.all(30.0),
               child: Image(
                 image: AssetImage("assets/vector.jpg"),
               )
             ),

             Padding(
               padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
               child: MaterialButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginChk()));
               },
                 color: Colors.red,
                 textColor: Colors.white,
                 child: Text("Login"),
               ),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
               child: TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
               },
                 child: Text("Sign up"),
               ),
             )
           ],
         ),
       ),
     ),
   );
  }
  
}
