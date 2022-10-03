import 'package:flutter/material.dart';

import 'hotellist.dart';

void main() {
  runApp(MaterialApp(
    home: HotBook(),
  ));
}

class HotBook extends StatefulWidget {
  @override
  State<HotBook> createState() => _HotBookState();
}

class _HotBookState extends State<HotBook> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Hello @rjun",style: TextStyle(color: Colors.grey,fontSize: 20),textAlign: TextAlign.start,),
                        Text("Find Your Favorite Hotel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: 'Search for Hotel',
                  fillColor: Colors.red,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
              child: Text(
                "Popular Hotel",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 220,width: double.infinity,
              child: ListView(scrollDirection: Axis.horizontal,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel1.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Holiday Inn"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$180 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel2.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Crowne Plaza"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$230 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel3.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Le Meridian"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$190 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel4.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Hotel Marriot"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$200 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel5.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Grand Hyatt"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$250 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                  child: Text(
                    "Hotel Packages",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                    child: Text(
                      "View All",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            ListView(shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel1.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 10,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const Text("CROWN PLAZA",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$180 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                              child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel2.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 10,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Hotel Marriot ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$200 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                              child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel3.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 10,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Le Meridian",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$180 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                              child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel4.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 10,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Holiday Inn",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$180 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                              child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel5.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 10,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Grand Hyatt",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$230 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                              child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
