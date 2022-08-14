import 'package:flutter/material.dart';

class BizBarada extends StatelessWidget {
  const BizBarada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromRGBO(0, 0, 0, 1),
          height: 119,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(image: AssetImage("assets/hunar.png")),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/call.png",
                        height: 12,
                        width: 12,
                        fit: BoxFit.contain,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: const Text(
                          "+9936+++++++",
                          style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/message.png",
                        height: 12,
                        width: 12,
                        fit: BoxFit.contain,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: const Text(
                          "Hunarlieller@gmail.com",
                          style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/insta.png",
                        height: 12,
                        width: 12,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: const Text(
                          "Hunarlieller",
                          style: const TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/gps.png",
                        height: 12,
                        width: 12,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: const Text(
                          "Turkmenistan, Asgabat",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          color: const Color.fromRGBO(51, 51, 51, 1),
          height: 40,
          width: double.infinity,
          child: Center(
              child: Text(
            "©2022 All rights reserved Design And Developed ",
            style: TextStyle(
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          )),
        )
      ],
    );
  }
}
