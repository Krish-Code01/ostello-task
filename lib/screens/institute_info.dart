import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_demo/widgets/ammenities.dart';
import 'package:ostello_demo/widgets/banner.dart';
import 'package:ostello_demo/widgets/courses_cards.dart';
import 'package:ostello_demo/widgets/rectangle.dart';

class InstituteInfo extends StatefulWidget {
  const InstituteInfo({super.key});

  @override
  State<InstituteInfo> createState() => _InstituteInfoState();
}

class _InstituteInfoState extends State<InstituteInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBanner(),
            Container(
              margin: EdgeInsets.only(left: 14, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Akash Institute",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text(
                      "Aakash offers courses for medical, and engineering entrance exams and scholarship exams such as NEET, JEE, Olympiads, NTSE and NSEs. You can take admission in one-year, two-year, three-year or four-year courses.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Avenir",
                        color: Color.fromARGB(255, 61, 61, 61),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Ammenities(),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 360,
              height: 184,
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/Screenshot 2023-09-17 at 9.27.13 AM.png",
                ),
              ),
            ),
            SizedBox(
              height: 27,
            ),
            RectangularBox(),
            AllCourses(),
          ],
        ),
      ),
    );
  }
}
