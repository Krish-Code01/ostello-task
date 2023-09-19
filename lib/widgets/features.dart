import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 194,
                        height: 68,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(
                            0xff7d23e0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 13),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Enroll now to get",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "10% OFF",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.network(
                              "https://s3-alpha-sig.figma.com/img/87e1/e1b9/ea8f0cbad276dda44ace9752649b527f?Expires=1696204800&Signature=DnXol8M~qVDXY5jVDfdFogvrgKHzgrBw0NCo9mzRv8h~l0OJkIJg1HCOEBOUF0ygeGQDRKnT6c3-7IiEro5CXRqNI~8aep7nb9x1DLkjpPt5El0tvj8N5P3Vq~wAovMmPEIR71o5COY-hxWJBgFETXT-LTld1ebqGnPvOIi47Jx7faCqPC~oMwk52nc6BsebUFvB~Y6FBZgohdNooCmxzqAvjwaFFu2W-YrmVnMPxVAISCDOg2o7qXP2F~cL7mJT7msPgPXuG59P1LgyFcEWighWgZ6xNuC7YBSpWcqRdQNSYw3OBqEGLuWKAXSQ059rGLUCW-F9NXqOj~Ju34h-rw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                              height: 31,
                              width: 31,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 161,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff7d23e0), Color(0xcc7d23e0)],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 26, top: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Get ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Free",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Demo Class",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Avenir",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image.network(
                          "https://s3-alpha-sig.figma.com/img/35bc/afed/07101a696dcfda3694cb999c2dc18efb?Expires=1696204800&Signature=hQJOaKcDkJENZdnuXfhKUYqeaGWcIhbFN-d-LwCJIdKQTsTm2G4cLxYiZwN7VGdgY18WF1UDpV6~AQ5hDkwuQu7QgzQ08HPsH2Y-tND5ubn0iUeE165MdFCZQ4zlyutskPN1Rd5NdCpvZwdwRpCHT2G~7cEU-7b6EYUeuboLiGMY49wBNfaE5VMS9qdO9~IzK6QmboR5l~cb~erEJ1rTh7WO7Dc9Lz9Xv8zM4Z~e9r4ZAq6X5pMzdHFDbrc~iY702X6aQsdpoTiFiT~UXtRaj~6ivzD6DRK5aZkbZntUfvYSGfN5pad6F4D0KMdZTMYqziUpIc9TvoA0pJXhBwSFVA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                          height: 44,
                          width: 44,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14),
            child: Stack(
              children: [
                Container(
                    width: 365,
                    height: 68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xff7d23e0), Color(0xcc7d23e0)],
                        ))),
                Container(
                  margin: EdgeInsets.only(
                    left: 26,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "EMI Payback",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "options Available*",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Avenir",
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Image.network(
                          "https://s3-alpha-sig.figma.com/img/35a2/b474/029484a2c609ec5dde7bdc45bfed9b67?Expires=1696204800&Signature=Jpnyr8pFCY3rNJmjVHtiei2PXLELF43XkwzsqTN9eEVvIvwNajl~EDlu~ngHokjSmvrjQRfEDJKLlWGN1MXEGs~2JfPyMYJ7SYCn6n7Iqzpd8ZgG0iNyq46M8M1cfOsQ~tSCgQjz9da9Lvo9f8zQ8JBOh4u8S4TiSJKHCWjLKDM1wQtoPfeQfmWMccXwGdJ7N6Kl4ZWjy1u5OZQVtQ9SseZAfl7U2X7JEaWDUr4X~DQOenukGTgra1Vo3Dau9c7iG9mvBVQQW68ozRvJilbEab0sfL28oavXAEhDCQEZel3wtePHd6PEMoWRck00JkbcpZKyb8DGAedcUikRLAsxgw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                          height: 72,
                          width: 72,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
