import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileScton(),
  ));
}

class ProfileScton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Profile"),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5, 24, 5, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      Container(
                          child: Text(
                            "Profile",
                            style: TextStyle(fontSize: 18),
                          )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profilepic.jpg"),
                        minRadius: 50,
                        maxRadius: 75,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 5, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/fb.png"),
                              minRadius: 25,
                              maxRadius: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/skype.png"),
                              minRadius: 25,
                              maxRadius: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundImage:
                              AssetImage("assets/images/youtube.png"),
                              minRadius: 25,
                              maxRadius: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/wapp.png"),
                              minRadius: 25,
                              maxRadius: 25,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
                            child: Text(
                              "Chromicle",
                              style:
                              TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                            child: Text(
                              "@amFOSS",
                              style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Mobile App Developer and Open source enthusiast",
                              style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                            ),
                          ),

                        ],
                      )
                    ],
                  ),

                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip_outlined),
                      title: Text("Privacy"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Icon(Icons.history),
                      title: Text("Purchase History"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Icon(Icons.help_outline),
                      title: Text("Help & Support"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Icon(Icons.person_add),
                      title: Text("Invite a Friend"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
