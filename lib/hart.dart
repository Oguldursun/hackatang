import 'package:flutter/material.dart';

class hart extends StatefulWidget {
  const hart({Key? key}) : super(key: key);

  @override
  State<hart> createState() => _hartState();
}

class _hartState extends State<hart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text(
              "HARYTLAR",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(117, 117, 117, 1)),
            ),
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/Hac2.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 400,
                  decoration: BoxDecoration(color: Colors.black.withAlpha(150)),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 12),
                child: Container(
                  height: 32,
                  width: 50,
                  color: Color.fromRGBO(255, 201, 10, 1),
                  child: Center(
                    child: Text(
                      "10%",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 190, right: 230),
                child: Container(
                  height: 32,
                  width: 95,
                  color: Color.fromRGBO(248, 126, 13, 1),
                  child: Center(
                    child: Text(
                      "YAKALAR",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
