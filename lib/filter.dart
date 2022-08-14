import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/hart.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        hart(),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 50, top: 20),
          child: Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromRGBO(255, 255, 255, 1)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Text(
                    "HARYTLAR",
                    style: GoogleFonts.monda(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50, top: 5),
                  child: CheckboxListTile(
                      activeColor: Color.fromRGBO(255, 201, 10, 1),
                      title: Text("TAHYA"),
                      value: a,
                      onChanged: (check) {
                        a = check!;
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50, top: 5),
                  child: CheckboxListTile(
                      activeColor: Color.fromRGBO(255, 201, 10, 1),
                      title: Text("YAKA"),
                      value: b,
                      onChanged: (check) {
                        b = check!;
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50, top: 5),
                  child: CheckboxListTile(
                      activeColor: Color.fromRGBO(255, 201, 10, 1),
                      title: Text("TORBA"),
                      value: c,
                      onChanged: (check) {
                        c = check!;
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50, top: 5),
                  child: CheckboxListTile(
                      activeColor: Color.fromRGBO(255, 201, 10, 1),
                      title: Text("HALY"),
                      value: d,
                      onChanged: (check) {
                        d = check!;
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50, top: 5),
                  child: CheckboxListTile(
                      activeColor: Color.fromRGBO(255, 201, 10, 1),
                      title: Text("TAHYA"),
                      value: e,
                      onChanged: (check) {
                        e = check!;
                        setState(() {});
                      }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
