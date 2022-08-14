import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/biz.barada.dart';
import 'package:hackathon/habarlashmak.dart';
import 'package:hackathon/hart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  var formKey = GlobalKey();
  List images = [
    "assets/yakaGirl.jpg",
    "assets/frame16.jpg",
    "assets/frame17.jpg",
    "assets/frame18.jpg",
  ];
  List img = [
    "assets/frame16.jpg",
    "assets/frame17.jpg",
    "assets/frame18.jpg",
    "assets/frame16.jpg",
    "assets/frame17.jpg",
    "assets/frame18.jpg",
  ];
  List kartinka = [
    "assets/Hac3.jpg",
    "assets/Hac4.jpg",
    "assets/Hak1.JPG",
    "assets/Hac3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: CarouselSlider.builder(
                            itemCount: 4,
                            options: CarouselOptions(
                              height: 230,
                              aspectRatio: 1.5,
                              viewportFraction: 1.5,
                              enlargeCenterPage: true,
                              autoPlay: true,
                            ),
                            itemBuilder: (ctx, index, realldx) {
                              return Image.asset(
                                "${images[index]}",
                                fit: BoxFit.fill,
                              );
                            },
                          ),
                        ),
                        Container(
                          height: 70,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Image.asset(
                                    "${img[index]}",
                                  )
                                ],
                              );
                            },
                            itemCount: 6,
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              "El islerini in onat gornusde elyeterli we gyzykly etmek",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(51, 51, 51, 1),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  text: "El islerini  ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(248, 126, 13, 1)),
                                  children: [
                                    const TextSpan(
                                      text:
                                          "Issiz ayal-gyzlar,oyde bolun ayal-gyzlara yaltalyk hasiyetlerine yol bermezlik uchin niyetlenen online shop...",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  hart(),
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
                  Column(
                    children: [
                      Text(
                        "TAZE HARYT",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(248, 126, 13, 1),
                        ),
                      ),
                      Text(
                        "EL KESDE",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(71, 71, 71, 1)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "ISLEGINIZ BILEN,BILELIKDE...",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(71, 71, 71, 1)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      height: 314,
                      width: 336,
                      child: Image.asset(
                        "assets/frame16.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Habarlasmak(),
                  ),
                  Container(
                    height: 279,
                    width: 335,
                    child: Image.asset("assets/map.jpg"),
                  ),
                  BizBarada(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
