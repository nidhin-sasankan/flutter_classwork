import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_classwork/NavigationDrawer/SettingsPage.dart';
import 'package:flutter_classwork/NavigationDrawer/aboutpage.dart';

class NavHomepage extends StatefulWidget {
  @override
  State<NavHomepage> createState() => _NavHomepageState();
}

class _NavHomepageState extends State<NavHomepage> {
  String mainProfilePic =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3tX9GUY0RJdxvyvuX0zIx_PHafgmoLdm5Lg&usqp=CAU";
  String otherProfilePic =
      "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/368-mj-2516-02.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=9f3d0ad657bbca1c0f2db36ad7deb323";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
            //canvasColor: Colors.blue
            ),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("John Doe"),
                accountEmail: Text("johndoe@email.com"),
                currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(mainProfilePic),
                    ),
                    onTap: () => print("Current User")),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/fullscreen.jpg"),
                        fit: BoxFit.fill)),
              ),
              ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.menu),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          SettingsPage("Other Page"),
                    ));
                  }),
              ListTile(
                  leading: Icon(Icons.info),
                  title: Text("About Page"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          AboutPage("About Page"),
                    ));
                  }),
              ListTile(
                  leading: Icon(Icons.security),
                  title: const Text("Settings Page"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          SettingsPage("Settings Page"),
                    ));
                  }),
              const Divider(
                thickness: 10.0,
              ),
              ListTile(
                title: Text("Close"),
                leading: Icon(Icons.cancel),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
