import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCourseCard extends StatelessWidget {
  const PopularCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18, top: 23),
      child: Stack(
        children: [
          Container(
            height: 245,
            width: 222,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                left: 16.0, top: 16, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 2,
                                  ),
                                  child: Image.asset(
                                    "assets/images/trophy.png",
                                    width: 8,
                                    height: 8,
                                  ),
                                ),
                                Text(
                                  "Bestseller",
                                  style: TextStyle(
                                    color: Color.fromRGBO(55, 74, 254, 1),
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 9,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 28,
                                width: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromRGBO(253, 216, 53, 1),
                                ),
                              ),
                              Text(
                                "Engineering",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 34),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₹12000",
                            style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            "₹9000 only",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(55, 75, 254, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "for one year",
                            style: TextStyle(
                              fontSize: 9,
                              color: Color.fromRGBO(149, 146, 146, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        "assets/images/pink_book.png",
                        height: 14,
                        width: 14,
                      ),
                    ),
                    Text(
                      "Physics. Chemistry. Maths",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Color.fromARGB(255, 61, 61, 61),
                        fontFamily: "Avenir",
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 213, 102, 1),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      height: 23,
                      width: 40,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Avenir",
                              fontSize: 10.0,
                            ),
                          ),
                          SizedBox(width: 0),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 12.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 14,
                    ),
                    Image.asset(
                      "assets/images/student.png",
                      height: 19,
                      width: 46,
                    ),
                    SizedBox(width: 6.0),
                    Text(
                      "50+ students already enrolled!",
                      style: TextStyle(
                        fontSize: 9.0,
                        fontFamily: "Avenir",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Container(
                  margin: EdgeInsets.only(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/Rectangle 2.svg",
                                width: 96,
                                height: 26,
                              ),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(126, 36, 225, 1),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: 7,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/Rectangle 2 enquire.svg",
                            width: 96,
                            height: 26,
                          ),
                          Text(
                            "Enquire Now",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(126, 36, 225, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 172),
            height: 134,
            width: 222,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 124, 33, 243),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BulletPointItem(
                    text:
                        "1 Year Power Step Classroom Course for JEE \n(Main & Advance)",
                  ),
                  BulletPointItem(
                    text:
                        "2 Year First Step Integrated Classroom Course \n(Main & Advance)",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BulletPointItem extends StatelessWidget {
  final String text;

  BulletPointItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.only(top: 4.0, right: 8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontFamily: "Avenir",
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
