import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List2(),
  ));
}

class List2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _List2State();
}

class _List2State extends State {
  List<String> fruits = ["Apple", "Banana", "Orange", "Watermelon", "Peach"];
  List<String> fimages = [
    "https://static.libertyprim.com/files/varietes/pomme-dalinette-large.jpg?1589283082",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSissJwlxMsEEr7uWS0qHUoj_Dvmop_y9R1pgtuycjheYbaxrU0FaGDNHQD7jNzmXK1mx8&usqp=CAU",
    "https://thumbs.dreamstime.com/b/sliced-orange-fruit-leaves-isolated-white-23331258.jpg",
    "https://thumbs.dreamstime.com/b/whole-watermelon-big-slice-isolated-white-background-as-package-design-element-77610622.jpg",
    "https://media.istockphoto.com/photos/single-whole-peach-fruit-with-leaf-and-slice-isolated-on-white-picture-id1151868959?b=1&k=20&m=1151868959&s=170667a&w=0&h=MRbqX-L8ykml2H8btJHotfNlELMfDLcfeEItHoB1G3M="
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Seperator"),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: ListTile(
                leading: Image.network(fimages[index]),
                title: Text(fruits[index]),
              ),
            );
          },
          separatorBuilder: (BuildContext, index) {
            return Divider(thickness: 10,);
          },
          itemCount: fimages.length),
    );
  }
}
