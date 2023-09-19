import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_demo/widgets/ammenities.dart';
import 'package:ostello_demo/widgets/banner.dart';
import 'package:ostello_demo/widgets/courses_cards.dart';
import 'package:ostello_demo/widgets/faq.dart';
import 'package:ostello_demo/widgets/features.dart';
import 'package:ostello_demo/widgets/info.dart';
import 'package:ostello_demo/widgets/instructor.dart';
import 'package:ostello_demo/widgets/news_event.dart';
import 'package:ostello_demo/widgets/previous_year_paper.dart';
import 'package:ostello_demo/widgets/rectangle.dart';
import 'package:ostello_demo/widgets/reviews.dart';
import 'package:ostello_demo/widgets/roadmap.dart';
import 'package:ostello_demo/widgets/school_card.dart';
import 'package:ostello_demo/widgets/toppers.dart';
import 'package:ostello_demo/widgets/video_card.dart';

class InstituteInfo extends StatefulWidget {
  const InstituteInfo({super.key});

  @override
  State<InstituteInfo> createState() => _InstituteInfoState();
}

class _InstituteInfoState extends State<InstituteInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBanner(),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(left: 14, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Akash Institute",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 4.0),
                          margin: EdgeInsets.only(
                            right: 21,
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
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text(
                      "Aakash offers courses for medical, and engineering entrance exams and scholarship exams such as NEET, JEE, Olympiads, NTSE and NSEs. You can take admission in one-year, two-year, three-year or four-year courses.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Avenir",
                        color: Color.fromRGBO(61, 61, 61, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 24,
              color: Colors.white,
            ),
            Ammenities(),
            Container(
              height: 24,
              color: Colors.white,
            ),
            Container(
              width: 360,
              height: 184,
              color: Colors.white,
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/Screenshot 2023-09-17 at 9.27.13 AM.png",
                ),
              ),
            ),
            Container(
              height: 27,
              color: Colors.white,
            ),
            RectangularBox(),
            AllCourses(),
            Features(),
            FAQs(),
            SchoolCard(),
            Container(
              height: 27,
              color: Colors.white,
            ),
            Toppers(),
            Container(
              height: 30,
              color: Colors.white,
            ),
            PreviousYearPapers(),
            Container(
              height: 28,
              color: Colors.white,
            ),
            NewsEvent(),
            Container(
              height: 30,
              color: Colors.white,
            ),
            Instructor(),
            Container(
              height: 35,
              color: Colors.white,
            ),
            Info(),
            Container(
              height: 30,
              color: Colors.white,
            ),
            Reviews(),
            Container(
              height: 30,
              color: Colors.white,
            ),
            VideoCards(),
            Container(
              height: 30,
              color: Colors.white,
            ),
            Roadmap(),
            Container(
              height: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
