import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hackathon/drawer.dart';
import 'package:hackathon/filter.dart';
import 'package:hackathon/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  Home myHome = Home();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 110),
                  child: Image.asset(
                    "assets/Frame 14.png",
                    width: 72,
                    height: 64,
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.red,
                    height: 34,
                    width: 34,
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart_outlined)),
                    )),
              ],
            )
          ],
          backgroundColor: Color.fromRGBO(243, 238, 217, 1),
          title: InkWell(
            onTap: () {},
          ),
          bottom: myTabbar(),
        ),
        drawer: MyMenyu(),
        body: TabBarView(
          controller: tabController,
          children: [myHome, Filter(), Container(), Container()],
        ),
      ),
    );
  }

  TabBar myTabbar() {
    return TabBar(
        isScrollable: true,
        labelStyle:
            TextStyle(fontSize: 16, color: Color.fromRGBO(71, 71, 71, 1)),
        controller: tabController,
        tabs: [
          Tab(
            child: Text(
              "Home",
              style: TextStyle(color: Color.fromRGBO(71, 71, 71, 1)),
            ),
          ),
          Tab(
            child: Text(
              "Harytlar",
              style: TextStyle(color: Color.fromRGBO(71, 71, 71, 1)),
            ),
          ),
          Tab(
            child: Text(
              "Halananlar",
              style: TextStyle(color: Color.fromRGBO(71, 71, 71, 1)),
            ),
          ),
          Tab(
            child: Text(
              "Habarlasmak",
              style: TextStyle(color: Color.fromRGBO(71, 71, 71, 1)),
            ),
          ),
        ]);
  }
}
