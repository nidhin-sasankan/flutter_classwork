import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_with_sqflite/register.dart';
import 'package:login_with_sqflite/sql_handler.dart';
import 'package:login_with_sqflite/welcome.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginChk()));
}

class LoginChk extends StatefulWidget {
  @override
  State<LoginChk> createState() => _LoginChkState();
}

class _LoginChkState extends State<LoginChk> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Insert a new journal to the database
  Future<void> _compateItem() async {
    var result = await SQLHandler.compareUser(_usernameController.text, _passwordController.text);
    //debugPrint(result);
    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //   content: Text("Saved Successfully"),
    // ));
    //_refreshJournals();
    if(result =="1"){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Dashboard()));
    }else{
      Fluttertoast.showToast(
          msg: "Login failed",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 75, 30, 30),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Text(
                "Login to your account",
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      label: Text("Username"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter Username"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(40)),
                  onPressed: () async {
                    // Save new journal
                    await _compateItem();
                    // Clear the text fields
                    _usernameController.text = '';
                    _passwordController.text = '';
                  },
                  child: Text("Login"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextButton(
                    onPressed: () {
                      //right way: use context in below level tree with MaterialApp
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registeruser()));
                      },
                    child: const Text("Don't have an account? Sign Up")),
              ),
              Image(image: AssetImage('assets/images/login.jpg')),
            ],
          ),
        ),
      );
  }
}
