import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_demo/widgets/courses_card.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 661,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(31, 184, 184, 184),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 19,
              ),
              Container(
                child: Text(
                  "All Courses",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              CourseDropdown(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseCards(),
                    CourseCards(),
                    CourseCards(),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 42,
              width: 105,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(125, 35, 224, 1),
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                value: selectedClass,
                onChanged: (newValue) {
                  setState(() {
                    selectedClass = newValue!;
                  });
                },
                hint: Text('Class'),
                underline: SizedBox(),
                items: <String>[
                  '10th',
                  '11th',
                  '12th',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        value,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color: Color.fromRGBO(125, 35, 224, 1),
                          ),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 42,
              width: 138,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(125, 35, 224, 1),
                ), // Add purple border
                borderRadius:
                    BorderRadius.all(Radius.circular(8.0)), // Rounded corners
              ),
              child: DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                value: selectedSub,
                onChanged: (newValue) {
                  setState(() {
                    selectedSub = newValue!;
                  });
                },
                hint: Text('Subject'),
                underline: SizedBox(),
                items: <String>[
                  'Physics',
                  'Chemistry',
                  'Math',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Color.fromRGBO(125, 35, 224, 1),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 42,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(
                    color:
                        Color.fromRGBO(125, 35, 224, 1)), // Add purple border
                borderRadius:
                    BorderRadius.all(Radius.circular(8.0)), // Rounded corners
              ),
              child: DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                onChanged: (newValue) {
                  setState(() {
                    selectedExam = newValue!;
                  });
                },
                underline: SizedBox(),
                hint: Container(
                  margin: EdgeInsets.only(left: 13),
                  child: Text(
                    'Exam',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(125, 35, 224, 1),
                    ),
                  ),
                ),
                items: <String>[
                  'JEE Mains',
                  'JEE Advanced',
                  'NEET',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Container(
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Color.fromARGB(255, 171, 29, 228),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 5,
            ),
            Container(
              height: 42,
              width: 160,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                onChanged: (newValue) {
                  setState(() {
                    selectedClass = newValue!;
                  });
                },
                hint: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Coaching Type',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                underline: SizedBox(),
                items: <String>[
                  '10th',
                  '11th',
                  '12th',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        value,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 42,
              width: 160,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black), // Add purple border
                borderRadius:
                    BorderRadius.all(Radius.circular(8.0)), // Rounded corners
              ),
              child: DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                onChanged: (newValue) {
                  setState(() {
                    selectedSub = newValue!;
                  });
                },
                hint: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Course Type',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                underline: SizedBox(),
                items: <String>[
                  'Physics',
                  'Chemistry',
                  'Math',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        value,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
