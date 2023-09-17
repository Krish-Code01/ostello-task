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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Amenities",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/material-symbols_ac-unit.png",
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
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 109, 109, 109),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/Group.png",
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
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 109, 109, 109),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/fluent_library-16-filled.png",
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
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 109, 109, 109),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/mdi_food.png",
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
                          "Caffeteria",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 109, 109, 109),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/mdi_cctv.png",
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
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 109, 109, 109),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/mdi_teacher.png",
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
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 109, 109, 109),
                                ),
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
    );
  }
}
