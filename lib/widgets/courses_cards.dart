import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_demo/widgets/all_courses_card.dart';
import 'package:ostello_demo/widgets/dropdown.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 661,
          width: double.infinity,
          margin: EdgeInsets.only(top: 22),
          decoration: BoxDecoration(
            color: Color.fromRGBO(250, 253, 255, 1),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 19,
              ),
              Container(
                child: Text(
                  "All Courses",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    fontFamily: "Avenir",
                  ),
                ),
              ),
              CourseDropdown(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AllCourseCards(),
                    AllCourseCards(),
                    AllCourseCards(),
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

class CourseDropdown extends StatefulWidget {
  @override
  _CourseDropdownState createState() => _CourseDropdownState();
}

class _CourseDropdownState extends State<CourseDropdown> {
  String selectedClass = '11th';
  String selectedSub = 'Physics';
  String selectedExam = 'JEE Mains';
  String coachingType = 'Krishna';
  String courseType = 'JEE Mains';

  bool isClassOpen = true;
  bool isSubOpen = true;

  bool isDropdownOpened = false;
  List classList = ["10th", '11th', "12th"];

  @override
  Widget build(BuildContext context) {
    print(isClassOpen);
    return Stack(
      children: [
        SizedBox(
          height: 18,
        ),
        Stack(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isClassOpen = false;
                });
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 12,
                  top: 18,
                ),
                child: CustomDropdown(
                  initialValue: selectedClass,
                  items: ['10th', '11th', '12th'],
                  onChanged: (value) {
                    setState(() {
                      selectedClass = value;
                    });
                  },
                  hintText: 'Coaching Type',
                  dropdownHeight: 42,
                  dropdownWidth: 104,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(
                left: 126,
                top: 18,
              ),
              child: CustomDropdown(
                initialValue: selectedSub,
                items: ['Physics', 'Chemistry', 'Math'],
                onChanged: (value) {
                  setState(() {
                    selectedSub = value;
                  });
                },
                hintText: 'Course Type',
                dropdownHeight: 42,
                dropdownWidth: 138,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isClassOpen = false;
                });
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 274,
                  top: 18,
                ),
                child: CustomDropdown(
                  initialValue: selectedSub,
                  items: ['Physics', 'Chemistry', 'Math'],
                  onChanged: (value) {
                    setState(() {
                      selectedSub = value;
                    });
                  },
                  hintText: 'Course Type',
                  dropdownHeight: 42,
                  dropdownWidth: 104,
                ),
              ),
            ),
            IgnorePointer(
              ignoring: isDropdownOpened,
              child: Container(
                margin: EdgeInsets.only(
                  left: 12,
                  top: 70,
                ),
                child: CustomDropdown(
                  initialValue: selectedSub,
                  items: ['Physics', 'Chemistry', 'Math'],
                  onChanged: (value) {
                    setState(() {
                      selectedSub = value;
                    });
                  },
                  hintText: 'Course Type',
                  dropdownHeight: 42,
                  dropdownWidth: 159,
                ),
              ),
            ),
            IgnorePointer(
              ignoring: isClassOpen, // Replace with your condition
              child: Container(
                margin: EdgeInsets.only(
                  left: 185,
                  top: 70,
                ),
                child: CustomDropdown(
                  initialValue: selectedSub,
                  items: ['Physics', 'Chemistry', 'Math'],
                  onChanged: (value) {
                    setState(() {
                      selectedSub = value;
                    });
                  },
                  hintText: 'Course Type',
                  dropdownHeight: 42,
                  dropdownWidth: 159,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
