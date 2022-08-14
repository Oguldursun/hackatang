import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Satyjylar extends StatelessWidget {
  const Satyjylar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              height: 30,
              width: double.infinity,
              child: Text(
                "Profile",
                style: GoogleFonts.monda(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //DOSTLARYM
                  Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color.fromRGBO(255, 201, 10, 1),
                    ),
                    child: Center(
                      child: Text(
                        "DOSTLARYM",
                        style: GoogleFonts.monda(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(250, 250, 250, 1)),
                      ),
                    ),
                  ),
                  //HARYT GOSMAK
                  Container(
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color.fromRGBO(195, 9, 61, 1),
                    ),
                    child: Center(
                      child: Text(
                        "HARYT GOSMAK",
                        style: GoogleFonts.monda(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(250, 250, 250, 1)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 380,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color.fromRGBO(242, 242, 242, 1)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Image(
                      image: AssetImage("assets/frame17.jpg"),
                      height: 307,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(7)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "YULDUZ",
                          style: GoogleFonts.monda(
                              fontSize: 14,
                              color: Color.fromRGBO(117, 117, 117, 1),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.message_sharp,
                          color: Colors.amber,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
