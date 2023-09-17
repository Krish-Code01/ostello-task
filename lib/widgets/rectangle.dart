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
          height: 420,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(36, 96, 125, 139),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Popular Courses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
