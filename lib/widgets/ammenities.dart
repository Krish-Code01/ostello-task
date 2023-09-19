import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Ammenities extends StatefulWidget {
  const Ammenities({super.key});

  @override
  State<Ammenities> createState() => _AmmenitiesState();
}

class _AmmenitiesState extends State<Ammenities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 14, bottom: 10),
                child: Text(
                  "Amenities",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/ac.png",
                              width: 20,
                              height: 20,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.0,
                          ),
                          child: Text(
                            "Air- conditioning",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 109, 109, 109),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/wifi.png",
                              width: 20,
                              height: 20,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.0,
                          ),
                          child: Text(
                            "Free wifi",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Avenir",
                              color: Color.fromARGB(255, 109, 109, 109),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/study.png",
                              width: 20,
                              height: 20,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.0,
                          ),
                          child: Text(
                            "Study Material",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Avenir",
                              color: Color.fromARGB(255, 109, 109, 109),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 65),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/food.png",
                              width: 20,
                              height: 20,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.0,
                          ),
                          child: Text(
                            "Cafeteria",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Avenir",
                              color: Color.fromARGB(255, 109, 109, 109),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/cctv.png",
                                  width: 20,
                                  height: 20,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Text(
                                "CCTV",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "Avenir",
                                  color: Color.fromARGB(255, 109, 109, 109),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/counselling.png",
                                  width: 20,
                                  height: 20,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Text(
                                "Ostello Counselling",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "Avenir",
                                  color: Color.fromARGB(255, 109, 109, 109),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
