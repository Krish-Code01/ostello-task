import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ostello_demo/widgets/courses_card.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(31, 184, 184, 184),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "All Courses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        value,
                        style:
                            TextStyle(color: Color.fromARGB(255, 171, 29, 228)),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple), // Add purple border
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        value,
                        style:
                            TextStyle(color: Color.fromARGB(255, 171, 29, 228)),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple), // Add purple border
                borderRadius:
                    BorderRadius.all(Radius.circular(8.0)), // Rounded corners
              ),
              child: DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                value: selectedExam,
                onChanged: (newValue) {
                  setState(() {
                    selectedExam = newValue!;
                  });
                },
                underline: SizedBox(),
                hint: Text('Exam'),
                items: <String>[
                  'JEE Mains',
                  'JEE Advanced',
                  'NEET',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        value,
                        style:
                            TextStyle(color: Color.fromARGB(255, 171, 29, 228)),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
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
                hint: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Coaching Type'),
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
                        style:
                            TextStyle(color: Color.fromARGB(255, 171, 29, 228)),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
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
                hint: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Course Type'),
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
                        style:
                            TextStyle(color: Color.fromARGB(255, 171, 29, 228)),
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
