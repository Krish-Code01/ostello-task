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
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Akash Institute",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Aakash offers courses for medical, and engineering entrance exams and scholarship exams such as NEET, JEE, Olympiads, NTSE and NSEs. You can take admission in one-year, two-year, three-year or four-year courses.",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 61, 61, 61),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Ammenities(),
            SizedBox(
              height: 20,
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
              height: 20,
            ),
            RectangularBox(),
            AllCourses(),
          ],
        ),
      ),
    );
  }
}
