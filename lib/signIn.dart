import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _atiyacVisible = false;
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 238, 217, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/frame22.png"),
                  height: 60,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Biziň sahypamyza hoş geldiňiz!",
                    style: GoogleFonts.monda(
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color.fromRGBO(51, 51, 51, 1)
                        //  height: 19
                        ),
                  ),
                ),
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
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: "Familýaňyz",
                      hintStyle: GoogleFonts.manrope(
                        fontSize: 14.6,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      )),
                ),
                TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      hintText: "Adresiniz",
                      hintStyle: GoogleFonts.manrope(
                        fontSize: 14.6,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      )),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "E-pocta",
                      hintStyle: GoogleFonts.manrope(
                        fontSize: 14.6,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      )),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: !_atiyacVisible,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _atiyacVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color.fromRGBO(50, 50, 50, 1),
                        ),
                        onPressed: () {
                          setState(() {
                            _atiyacVisible = !_atiyacVisible;
                          });
                        },
                      ),
                      hintText: "Atiyac kod",
                      hintStyle: GoogleFonts.manrope(
                        fontSize: 14.6,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      )),
                ),
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
                    height: 47,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(248, 126, 13, 1)),
                    child: Center(
                        child: Text(
                      "SEND",
                      style: GoogleFonts.manrope(
                        fontSize: 12,
                        color: Color.fromRGBO(255, 250, 250, 1),
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
