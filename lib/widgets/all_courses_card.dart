import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllCourseCards extends StatelessWidget {
  AllCourseCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            height: 409,
            width: 222,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Rectangle 19996 (1).png',
                            width: double.infinity,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.play_circle_filled),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0, top: 9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Physics Foundation Course",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            "₹1000/- month",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "₹1700",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Color.fromARGB(167, 139, 43, 229),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 14,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "1 Year Course Duration",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/pink_book.png",
                            height: 14,
                            width: 14,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Offline.Online",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106),
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Buy Now",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(192, 30),
                                primary: Color.fromARGB(255, 126, 48, 235),
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(192, 30),
                                primary: Colors.transparent,
                                onPrimary: Color.fromARGB(255, 126, 48, 235),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 126, 48, 235),
                                ),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "• Recorded lectures by Ostello",
                              style: GoogleFonts.lato(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "• Full lifetime access",
                              style: GoogleFonts.lato(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "• Exercise files",
                              style: GoogleFonts.lato(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "• Mock tests and assignments",
                              style: GoogleFonts.lato(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "• Doubt clearing sessions",
                              style: GoogleFonts.lato(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                          ],
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
