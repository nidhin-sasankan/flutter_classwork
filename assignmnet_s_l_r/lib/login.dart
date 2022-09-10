import 'package:assignmnet_s_l_r/dashboard.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(LoginChk());
}

class LoginChk extends StatelessWidget{
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
                child: Text("Login", style: TextStyle(fontSize: 28),),
              ),
              Text("Login to your account", style: TextStyle(fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(decoration: InputDecoration(
                  label: Text("Username"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Enter Username"
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Enter Password"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
                },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Login"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextButton(
                    onPressed:(){

                    },
                    child: const Text("Don't have an account? Sign Up")
                ),
              ),
              Image(image: AssetImage('assets/login.jpg')),
            ],
          ),
        ),
      ),
    );
  }

}