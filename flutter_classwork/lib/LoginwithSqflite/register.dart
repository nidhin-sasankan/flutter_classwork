import 'package:flutter/material.dart';
import 'package:flutter_classwork/LoginwithSqflite/sql_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Registeruser(),));
}

class Registeruser extends StatefulWidget {
  @override
  State<Registeruser> createState() => _RegisterState();
}

class _RegisterState extends State<Registeruser> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // All journals
  List<Map<String, dynamic>> _journals = [];

  // This function is used to fetch all data from the database
  // void _refreshJournals() async {
  //   final data = await SQLHandler.getAllUsers();
  //   setState(() {
  //     _journals = data;
  //   });
  // }
  // Insert a new journal to the database
  Future<void> _addItem() async {
    var result =  await SQLHandler.createUser(_usernameController.text, _emailController.text, _passwordController.text);
    if(result!=null) {
      Fluttertoast.showToast(
          msg: "Saved Successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
      );
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => LoginChk()));
    }else{
      Fluttertoast.showToast(
          msg: "Registration failed",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //   content: Text("Saved Successfully"),
    // ));
    //_refreshJournals();

  }

  // @override
  // void initState() {
  //   super.initState();
  //   _refreshJournals(); // Loading the diary when the app starts
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 70, 30, 30),
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Text(
                "Create an account, It's free",
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
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
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter an Email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextField(
                  controller: _passwordController,
                  obscuringCharacter: '*',
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextField(
                  obscuringCharacter: '*',
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Confirm Password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter Confirm Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(40)),
                  onPressed: () async {
                    // Save new journal
                    await _addItem();
                    // Clear the text fields
                    _usernameController.text = '';
                    _emailController.text = '';
                    _passwordController.text = '';
                  },
                  child: Text("Sign Up"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginChk()));
                    },
                    child: const Text("Already have an account? Login")),
              ),
            ],
          ),
        ),
      );
  }
}
