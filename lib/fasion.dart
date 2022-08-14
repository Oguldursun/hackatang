import 'package:flutter/material.dart';

class Fasion extends StatefulWidget {
  const Fasion({Key? key}) : super(key: key);

  @override
  State<Fasion> createState() => _FasionState();
}

class _FasionState extends State<Fasion> {
  List kartinka = [
    "assets/Hac3.jpg",
    "assets/Hac4.jpg",
    "assets/Hak1.JPG",
    "assets/Hac3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 162,
          width: 162,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Image.asset(
                    "${kartinka[index]}",
                  )
                ],
              );
            },
            itemCount: 4,
          ),
        ),
        Container(
          height: 471,
          width: 336,
          child: Image.asset("assets/Rectangle20.jpg"),
        ),
        Container(
          height: 162,
          width: 162,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Image.asset(
                    "${kartinka[index]}",
                  )
                ],
              );
            },
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
