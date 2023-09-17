import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                      Text("Air- conditioning",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ))
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
                      Text("Free wifi",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ))
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
                      Text("Study Material",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ))
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
                      Text("Caffeteria",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ))
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
                          Text("CCTV",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ))
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
                          Text("Ostello Counselling",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ))
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
