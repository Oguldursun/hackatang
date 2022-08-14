import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Habarlasmak extends StatefulWidget {
  const Habarlasmak({Key? key}) : super(key: key);

  @override
  State<Habarlasmak> createState() => _HabarlasmakState();
}

class _HabarlasmakState extends State<Habarlasmak> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: Color.fromRGBO(51, 51, 51, 1),
        height: 101,
        width: double.infinity,
        child: Center(
          child: Text(
            "Habarlaşmak",
            style: GoogleFonts.manrope(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
                fontStyle: FontStyle.normal),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: [
              //Adynyz
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    // floatingLabelBehavior: FloatingLabelBehavior.always,
                    // floatingLabelAlignment: FloatingLabelAlignment.center,
                    hintText: "Adyňyz",
                    hintStyle: GoogleFonts.manrope(
                      fontSize: 14.6,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    )

                    // helperText: "Adynyzy girizin"

                    ),
              ),
              //Adres
              TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                    hintText: "Adresiniz",
                    hintStyle: GoogleFonts.manrope(
                      fontSize: 14.6,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    )),
              ),
              //Kod
              TextField(
                keyboardType: TextInputType.text,

                obscureText: !_passwordVisible,

                // maxLength: 20,
                decoration: InputDecoration(
                    hintText: "Kodunyz",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color.fromRGBO(50, 50, 50, 1),
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    hintStyle: GoogleFonts.manrope(
                      fontSize: 14.6,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    )),
              ),
              //Nomer
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 8,
                decoration: InputDecoration(
                    hintText: "••••••••",
                    //isDense: true,
                    prefixIcon: Text("+993"),
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 0, minHeight: 0),
                    prefixStyle: TextStyle(color: Colors.red),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    hintStyle: GoogleFonts.manrope(
                      fontSize: 14.6,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    )),
              ),
              Center(
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(255, 201, 10, 1)),
                  child: Center(
                      child: Text(
                    "SEND",
                    style: GoogleFonts.manrope(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(20, 20, 20, 1),
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
