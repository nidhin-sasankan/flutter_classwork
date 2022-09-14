import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Contactbook(),
  ));
}

class Contactbook extends StatelessWidget {
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
                backgroundImage: NetworkImage(
                    "https://t4.ftcdn.net/jpg/02/79/66/93/360_F_279669366_Lk12QalYQKMczLEa4ySjhaLtx1M2u7e6.jpg"),
              ),
              // leading: Icon(Icons.search),
              title: Text("Anju"),
              trailing: Wrap(
                spacing: 10,
                children: [Icon(Icons.phone), Icon(Icons.message)],
              ),
              onTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Clicked")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/002/275/847/original/male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg"),
              ),
              title: Text("Aneesh"),
              trailing: Wrap(
                spacing: 10,
                children: [Icon(Icons.phone), Icon(Icons.message)],
              ),
              onTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Clicked")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://assets.materialup.com/uploads/b78ca002-cd6c-4f84-befb-c09dd9261025/preview.png"),
              ),
              title: Text("Bibin"),
              trailing: Wrap(
                spacing: 10,
                children: [Icon(Icons.phone), Icon(Icons.message)],
              ),
              onTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Clicked")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/115490361/original/24750cc89e79244d350f49cac7097b68ba1215e4/create-a-cartoon-avatar-profile-pic.png"),
              ),
              title: Text("Vinu"),
              trailing: Wrap(
                spacing: 10,
                children: [Icon(Icons.phone), Icon(Icons.message)],
              ),
              onTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Clicked")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/004/773/704/non_2x/a-girl-s-face-with-a-beautiful-smile-a-female-avatar-for-a-website-and-social-network-vector.jpg"),
              ),
              title: Text("Zerah"),
              trailing: Wrap(
                spacing: 10,
                children: [Icon(Icons.phone), Icon(Icons.message)],
              ),
              onTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Clicked")));
              },
            ),
          ),
        ],
      ),
    );
  }
}
