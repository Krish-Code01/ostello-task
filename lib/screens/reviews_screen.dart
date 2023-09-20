import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ostello_demo/screens/add_review_screen.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});
  static const routeName = "/reviewScreen";
  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 20,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 14,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromRGBO(125, 35, 224, 1),
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Reviews & Ratings",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        "Student’s Ratings\n& Reviews",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 213, 102, 1),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        height: 30,
                        width: 50,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Avenir",
                                fontSize: 13.0,
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
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "Total Reviews (133)",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 39),
                    child: SvgPicture.asset(
                        "assets/images/horizontal_divider.svg"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 65,
                      ),
                      Row(
                        children: [
                          Text(
                            "5 stars",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Stack(
                            children: [
                              Container(
                                  width: 147,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff9f3ff))),
                              Container(
                                width: 119,
                                height: 14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff7d23e0),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text("74%",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "4 stars",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Stack(
                            children: [
                              Container(
                                  width: 147,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff9f3ff))),
                              Container(
                                width: 25,
                                height: 14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff7d23e0),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "  5%",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "3 stars",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Stack(
                            children: [
                              Container(
                                  width: 147,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff9f3ff))),
                              Container(
                                  width: 34,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff7d23e0)))
                            ],
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text("  8%",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "2 stars",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Stack(
                            children: [
                              Container(
                                  width: 147,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff9f3ff))),
                              Container(
                                width: 13,
                                height: 14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff7d23e0),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text("  1%",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "1 stars",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Stack(
                            children: [
                              Container(
                                  width: 147,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff9f3ff))),
                              Container(
                                width: 25,
                                height: 14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff7d23e0),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text("13%",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AddReviewScreen.routeName,
                    );
                  },
                  child: Container(
                    height: 39,
                    margin: EdgeInsets.symmetric(
                      horizontal: 21,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color(0xff7d23e0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Add Review",
                        style: TextStyle(
                          color: Color(0xff7d23e0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 21,
                    top: 4,
                  ),
                  child: Text(
                    "Went to this institute? Please add a review!",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 366,
              height: 147,
              decoration: BoxDecoration(
                color: Color.fromRGBO(251, 251, 251, 1),
              ),
              child: Container(
                margin: EdgeInsets.only(
                  top: 18,
                  left: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/5cc1/e8ed/0a352f8b5f4cb79241ee24ac89377747?Expires=1696204800&Signature=hkQPq9k0uo49r6ubRayDWbi3sPRQ73umLmssFIJqzKVjrFB4pCXWyFfE9-0Bv6tG8Uu37YpkTJUmaZzURQIMWKsVSrHdvNZ6kZdXnL6zpvJprX9ITLrEEkcF4~KxWgK6NNogn5gxu9CDzklhalvaX2E-gAS~agCWWTbgC61AtNmSWmm7i7QUZirm33Mk~qmafnrxwAm2ayNIC9SNtkOhI0Q4iPgk4vnfkXRkp~jUfzcEFaXWfW0Q~o3XPR2~aAJfSlaZbrTwuGcbbKgPjOLq6fcNMokPqpW7MJVTgFXaoyBFLn2SZhG5GCEc1FsvCcD0ePk-8LYiUFsXO3ymzLRXYw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                "Sarah Miller",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Avenir",
                                  color: Color.fromRGBO(115, 41, 216, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 147,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Star 1.svg",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text("3.9/5",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Avenir",
                                    color: Color.fromRGBO(115, 41, 216, 1),
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The course felt so personalized that I could follow it all along. The instructor knew exactly what he was doing and it was easy for me to grasp the basic concepts as well. Highly recommended!",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Avenir",
                          color: Color.fromRGBO(90, 90, 90, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              width: 366,
              height: 147,
              decoration: BoxDecoration(
                color: Color.fromRGBO(251, 251, 251, 1),
              ),
              child: Container(
                margin: EdgeInsets.only(
                  top: 18,
                  left: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/5cc1/e8ed/0a352f8b5f4cb79241ee24ac89377747?Expires=1696204800&Signature=hkQPq9k0uo49r6ubRayDWbi3sPRQ73umLmssFIJqzKVjrFB4pCXWyFfE9-0Bv6tG8Uu37YpkTJUmaZzURQIMWKsVSrHdvNZ6kZdXnL6zpvJprX9ITLrEEkcF4~KxWgK6NNogn5gxu9CDzklhalvaX2E-gAS~agCWWTbgC61AtNmSWmm7i7QUZirm33Mk~qmafnrxwAm2ayNIC9SNtkOhI0Q4iPgk4vnfkXRkp~jUfzcEFaXWfW0Q~o3XPR2~aAJfSlaZbrTwuGcbbKgPjOLq6fcNMokPqpW7MJVTgFXaoyBFLn2SZhG5GCEc1FsvCcD0ePk-8LYiUFsXO3ymzLRXYw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                "Sarah Miller",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Avenir",
                                  color: Color.fromRGBO(115, 41, 216, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 147,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Star 1.svg",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "3.9/5",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Avenir",
                                  color: Color.fromRGBO(115, 41, 216, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The course felt so personalized that I could follow it all along. The instructor knew exactly what he was doing and it was easy for me to grasp the basic concepts as well. Highly recommended!",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Avenir",
                          color: Color.fromRGBO(90, 90, 90, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 366,
              height: 147,
              decoration: BoxDecoration(
                color: Color.fromRGBO(251, 251, 251, 1),
              ),
              child: Container(
                margin: EdgeInsets.only(
                  top: 18,
                  left: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/5cc1/e8ed/0a352f8b5f4cb79241ee24ac89377747?Expires=1696204800&Signature=hkQPq9k0uo49r6ubRayDWbi3sPRQ73umLmssFIJqzKVjrFB4pCXWyFfE9-0Bv6tG8Uu37YpkTJUmaZzURQIMWKsVSrHdvNZ6kZdXnL6zpvJprX9ITLrEEkcF4~KxWgK6NNogn5gxu9CDzklhalvaX2E-gAS~agCWWTbgC61AtNmSWmm7i7QUZirm33Mk~qmafnrxwAm2ayNIC9SNtkOhI0Q4iPgk4vnfkXRkp~jUfzcEFaXWfW0Q~o3XPR2~aAJfSlaZbrTwuGcbbKgPjOLq6fcNMokPqpW7MJVTgFXaoyBFLn2SZhG5GCEc1FsvCcD0ePk-8LYiUFsXO3ymzLRXYw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                "Sarah Miller",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Avenir",
                                  color: Color.fromRGBO(115, 41, 216, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 147,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Star 1.svg",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "3.9/5",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Avenir",
                                  color: Color.fromRGBO(115, 41, 216, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The course felt so personalized that I could follow it all along. The instructor knew exactly what he was doing and it was easy for me to grasp the basic concepts as well. Highly recommended!",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Avenir",
                          color: Color.fromRGBO(90, 90, 90, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
