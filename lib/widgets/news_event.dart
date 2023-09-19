import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsEvent extends StatelessWidget {
  const NewsEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 13, right: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "News & Events",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "view all >",
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(144, 43, 255, 1),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(left: 13, right: 13),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PreviousYearPaperCard(),
                  SizedBox(
                    width: 14,
                  ),
                  PreviousYearPaperCard(),
                  SizedBox(
                    width: 14,
                  ),
                  PreviousYearPaperCard(),
                  SizedBox(
                    width: 14,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PreviousYearPaperCard extends StatelessWidget {
  const PreviousYearPaperCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 145,
          height: 129,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(
              0xfff1f2ff,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0.2,
                blurRadius: 4,
                offset: Offset(-2, 0),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 7,
              left: 11,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Indian Olympiad \nQualifier (IOQM) \n2023-24",
                  style: TextStyle(
                    height: 1.6,
                    fontSize: 12,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Registration Open",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Avenir",
                    height: 2,
                    color: Color.fromRGBO(0, 213, 102, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 145,
          height: 33,
          margin: EdgeInsets.only(
            top: 105,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Color(0xff374afd),
          ),
          child: Center(
            child: Text(
              "Check Now",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
