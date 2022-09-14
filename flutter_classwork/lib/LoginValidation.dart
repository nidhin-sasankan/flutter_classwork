import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginwithvalid(),
  ));
}

class Loginwithvalid extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _form, //assigning key to form
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Login", textAlign: TextAlign.center,style: TextStyle(fontSize: 22, color: Colors.blueAccent)),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email", border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null || !(text.contains('@')) || text.isEmpty) {
                    return "Enter a valid email address!";
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    labelText: "Password", border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null || !(text.length <= 6) || text.isEmpty) {
                    return "Enter valid password atmost 5 characters!";
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50,right: 50),
              child: ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    final isValid = _form.currentState!.validate();
                    if (isValid) {
                      Fluttertoast.showToast(
                          msg: "Success",
                          gravity: ToastGravity.BOTTOM,
                          fontSize: 16.0);
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      Fluttertoast.showToast(
                          msg: "Username / Password is Incorrect",
                          gravity: ToastGravity.BOTTOM,
                          fontSize: 16.0);
                    }
                  }),
            ),
            TextButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => Register()));
              },
              child: const Text("Not a user? Register Here"),
            ),
          ],
        ),
      ),
    );
  }
}
