import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListviewCustm(),));
}
class ListviewCustm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ListviewCustmState();
}

class _ListviewCustmState extends State {
  List<String> vegetables = [
    "Potato",
    "Onion",
    "Tomato",
    "Carrot",
    "Beetroot"
    "Cabbage",
    "Corn",
    "Capsicum",
    "Borccoli"
  ];
  List<String> vimages = [
    "https://media.istockphoto.com/photos/three-potatoes-picture-id157430678?k=20&m=157430678&s=612x612&w=0&h=dfYLuPYwA50ojI90hZ4jCgKZd5TGnqf24UCVBszoZIA=",
    "https://media.istockphoto.com/photos/red-onion-with-the-outer-peel-removed-picture-id503144946?k=20&m=503144946&s=612x612&w=0&h=vNQLARfI2jwE0hqv48k12jeju0DwG3v0vULzPHuE3Fw=",
    "https://media.istockphoto.com/photos/tomatoes-isolate-on-white-background-tomato-half-isolated-tomatoes-picture-id1258142863?b=1&k=20&m=1258142863&s=170667a&w=0&h=iFVeHatKRUPjoAd2YR1Lgjv_74tZ-gTBbT3cOqFy0BI=",
    "https://media.istockphoto.com/photos/fresh-carrots-isolated-on-white-background-picture-id545454816?k=20&m=545454816&s=612x612&w=0&h=zTbL2GTPiWKU7kNyC1mqsQfbBvQIQNKtRgm_uLzUKkk=",
    "https://m.media-amazon.com/images/I/616PXhYj8iL._SX679_.jpg",
    "https://media.istockphoto.com/photos/green-cabbage-isolated-on-white-background-picture-id624925456?k=20&m=624925456&s=612x612&w=0&h=AuTlbQavcaQWxC0ba_Zw_u3WD7K-OzkyZvMLlIZC9v4=",
    "https://thumbs.dreamstime.com/b/sweet-fresh-corn-could-be-harvested-55713290.jpg",
    "https://t4.ftcdn.net/jpg/02/87/25/37/360_F_287253716_I1seSRet5pt8YGBRRcTbPPV1WesM00n9.jpg",
    "https://cdn.pixabay.com/photo/2016/03/05/19/02/broccoli-1238250__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Custom"),
      ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((BuildContext, index){
        return Container(
          child: Card(
            child: ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
              child: Image.network(vimages[index])),
              title: Text(vegetables[index]),
            ),
          ),
        );
      },
      childCount: 8,
      ),
      shrinkWrap: true,
      padding: EdgeInsets.all(5),
      scrollDirection: Axis.vertical,
      ),
    );
  }
}