import 'package:assignmnet_s_l_r/login.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Register());
}

class Register extends StatelessWidget{
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
                child: Text("Register", style: TextStyle(fontSize: 28),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(decoration: InputDecoration(
                    label: Text("Username"),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Enter Username"
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter an Email"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextField(
                  obscuringCharacter: '*',
                  obscureText: true,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginChk()));
                },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Sign up"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextButton(
                    onPressed:(){

                    },
                    child: const Text("Already have an account? Login")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}