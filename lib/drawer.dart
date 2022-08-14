import 'package:flutter/material.dart';
import 'package:hackathon/habarlashmak.dart';
import 'package:hackathon/profile.dart';
import 'package:hackathon/signIn.dart';
import 'package:hackathon/signUp.dart';

class MyMenyu extends StatefulWidget {
  @override
  State<MyMenyu> createState() => _MyMenyuState();
}

class _MyMenyuState extends State<MyMenyu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromRGBO(243, 238, 217, 1),
        child: ListView(
          children: [
            ExpansionTile(
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black87,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    size: 22,
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: Text(
                      "Home",
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                  )
                ],
              ),
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 8),
                      child: Text(
                        "home",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black87,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.production_quantity_limits_outlined,
                      size: 22, color: Colors.black87),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Text(
                      "Harytlar",
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                  )
                ],
              ),
              children: [
                Column(children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 110, top: 8),
                        child: Text(
                          "Yaka",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110, top: 8),
                        child: Text(
                          "Geyim",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110, top: 8),
                        child: Text(
                          "Torba",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110, top: 8),
                        child: Text(
                          "Tahya",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ])
              ],
            ),
            ExpansionTile(
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black87,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.phone_android_outlined,
                      size: 22, color: Colors.black87),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Text(
                      "Biz barada",
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                  )
                ],
              ),
              children: [
                Column(children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Satyjylar()));
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 100, top: 8, bottom: 10),
                      child: Text(
                        "Profil",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ])
              ],
            ),
            ExpansionTile(
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black87,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.edit, size: 22, color: Colors.black87),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Text(
                      "Bizde agza",
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                  )
                ],
              ),
              children: [
                Column(children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 50, top: 8, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 201, 10, 1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 70,
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sign_in()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 65, top: 8, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(195, 9, 61, 1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 70,
                            child: Center(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ])
              ],
            ),
            ExpansionTile(
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black87,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.phone_callback, size: 22, color: Colors.black87),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SafeArea(
                                  child: Scaffold(body: Habarlasmak()))));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text(
                        "Habarlasmak",
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
