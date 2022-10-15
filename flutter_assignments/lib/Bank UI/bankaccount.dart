import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BankAcc(),
  ));
}

class BankAcc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BankUIState();
}

class BankUIState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(child: Text("Welcome! Nidhin")),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.qr_code_scanner_outlined,
              size: 36,
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 170,
              child: Stack(children: [
                Container(
                  height: 70,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      height: 150,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  top: 40,
                  left: 50,
                  child: CircleAvatar(
                    radius: 54,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        "assets/images/masked.png",
                      ),
                    ),
                  ),
                ),
                const Positioned(
                    top: 54,
                    left: 180,
                    child: Text(
                      "SAMMUNATI BACHAT KHATA",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )),
                const Positioned(
                    top: 78,
                    left: 180,
                    child: Text(
                      "NPR. 1,00,999.35",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    )),
                const Positioned(
                    top: 100,
                    left: 180,
                    child: Text(
                      "28165648161548651",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    bottom: 68,
                    right: 40,
                    child: Icon(
                      Icons.remove_red_eye_rounded,
                      size: 23,
                      color: Colors.teal[200],
                    )),
                const Positioned(
                    bottom: 28,
                    left: 230,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.red,
                    ))
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ImageIcon(
                    AssetImage(
                      "assets/icons/flowericon.png",
                    ),
                    color: Colors.red,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "WOULD YOU LIKE TO?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 20,
                              left: 40,
                              child: ImageIcon(
                                AssetImage("assets/icons/mob2.png"),
                                color: Colors.red,
                                size: 50,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Text(
                                "My Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 20,
                              left: 40,
                              child: ImageIcon(
                                AssetImage("assets/icons/esewa.png"),
                                size: 50,
                                color: Colors.green,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Text(
                                "Load eSeva",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 20,
                              left: 40,
                              child: ImageIcon(
                                AssetImage("assets/icons/mob1.png"),
                                size: 50,
                                color: Colors.red,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Text(
                                "Payment",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 20,
                              left: 40,
                              child: ImageIcon(
                                AssetImage("assets/icons/fundnew.png"),
                                color: Colors.red,
                                size: 50,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Text(
                                "Fund Transfer",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 20,
                              left: 40,
                              child: ImageIcon(
                                AssetImage("assets/icons/money.png"),
                                size: 50,
                                color: Colors.red,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Text(
                                "Schedule Payment",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 20,
                              left: 40,
                              child: Icon(
                                Icons.qr_code_scanner_outlined,
                                size: 50,
                                color: Colors.red,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Text(
                                "Scan To Pay",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ImageIcon(
                    AssetImage(
                      "assets/icons/flowericon.png",
                    ),
                    color: Colors.red,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "LAST TRANSACTIONS",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      child: ClipPath(
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: Container(
                          height: 90,
                          decoration: const BoxDecoration(
                              border: Border(
                                  left:
                                      BorderSide(color: Colors.red, width: 6))),
                          child: ListTile(
                            visualDensity: VisualDensity(vertical: 3),
                            dense: true,
                            trailing: const Text(
                              "NPR.10,000.00",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),

                            leading: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "CWDR/",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "974884/9874513365478965",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "10-06-2019",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            // subtitle: Text(
                            //     "10-06-2019",
                            //     style: TextStyle(fontWeight: FontWeight.bold),
                            //   ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ClipPath(
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: Container(
                          height: 70,
                          decoration: const BoxDecoration(
                              border: Border(
                                  left:
                                      BorderSide(color: Colors.red, width: 6))),
                          child: ListTile(
                            trailing: const Text(
                              "NPR.10,000.00",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            leading: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "CWDR/",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "974884/9874513365478965",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "10-06-2019",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ClipPath(
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: Container(
                          height: 70,
                          decoration: const BoxDecoration(
                              border: Border(
                                  left:
                                      BorderSide(color: Colors.red, width: 6))),
                          child: ListTile(
                            trailing: const Text(
                              "NPR.10,000.00",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            leading: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "CWDR/",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "974884/9874513365478965",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "10-06-2019",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
