import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ostello_demo/widgets/course.dart';

class RectangularBox extends StatelessWidget {
  const RectangularBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(242, 247, 251, 1),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 12),
                child: Text(
                  "Popular Courses",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
