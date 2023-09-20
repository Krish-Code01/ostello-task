import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:ostello_demo/widgets/all_courses_card.dart';

class AllCourses extends StatefulWidget {
  AllCourses({super.key});

  @override
  State<AllCourses> createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  int _currentPage = 0;
  int _activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    CarouselController _pageController = CarouselController();

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
              SizedBox(
                height: 14,
              ),
              //
              Column(
                children: [
                  CarouselSlider(
                    items: [
                      AllCourseCards(),
                      AllCourseCards(),
                      AllCourseCards(),
                      SizedBox(
                        width: 0,
                      ),
                    ],
                    carouselController: _pageController,
                    options: CarouselOptions(
                        padEnds: false,
                        enableInfiniteScroll: false,
                        enlargeCenterPage: false,
                        disableCenter: true,
                        height: 420,
                        viewportFraction: 0.6,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentPage = index;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: ["1", "2", "3"].asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _pageController.animateToPage(entry.key),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Color.fromRGBO(126, 48, 235, 1)
                                        : Color.fromRGBO(126, 48, 235, 1))
                                    .withOpacity(
                                        _currentPage == entry.key ? 0.9 : 0.4),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
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
  String? selectedClass;
  String? selectedSub;
  String? selectedExam;
  final activeColor = Color.fromRGBO(126, 48, 235, 1);
  final nonActiveColor = Color.fromRGBO(111, 111, 111, 1);

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
              width: 104,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                border: Border.all(
                  color: selectedClass == null ? nonActiveColor : activeColor,
                ),
              ),
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          selectedClass == null ? nonActiveColor : activeColor,
                      width: 1.0,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(
                    bottom: 12,
                  ),
                ),
                hint: Text(
                  'Class',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 14,
                  ),
                ),
                items: ["10th", "11th", "12th"]
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 14,
                            color: Color.fromRGBO(125, 35, 224, 1),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedClass = value.toString();
                  });
                },
                onSaved: (value) {
                  setState(() {
                    selectedClass = value.toString();
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Icons.expand_more,
                    color: selectedClass == null ? nonActiveColor : activeColor,
                  ),
                ),
                dropdownStyleData: DropdownStyleData(
                  offset: Offset(0, -10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:
                          selectedClass == null ? nonActiveColor : activeColor,
                    ),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            Container(
              height: 42,
              width: 138,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  border: Border.all(
                    color: selectedSub == null ? nonActiveColor : activeColor,
                  )),
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: selectedSub == null ? nonActiveColor : activeColor,
                      width: 1.0,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(
                    bottom: 12,
                  ),
                ),
                hint: Text(
                  'Subject',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 14,
                  ),
                ),
                items: ["Physics", "Chemistry", "Maths"]
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 14,
                            color: Color.fromRGBO(125, 35, 224, 1),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedSub = value.toString();
                  });
                },
                onSaved: (value) {
                  setState(() {
                    selectedSub = value.toString();
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Icons.expand_more,
                    color: selectedSub == null ? nonActiveColor : activeColor,
                  ),
                ),
                dropdownStyleData: DropdownStyleData(
                  offset: Offset(0, -10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectedSub == null ? nonActiveColor : activeColor,
                    ),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            Container(
              height: 42,
              width: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                border: Border.all(
                  color: selectedExam == null ? nonActiveColor : activeColor,
                ),
              ),
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    bottom: 12,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(125, 35, 225, 1),
                      width: 1.0,
                    ),
                  ),
                ),
                hint: Text(
                  "Exams",
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 14,
                  ),
                ),
                items: [
                  "JEE Mains",
                  "JEE Advanced",
                  "Medical",
                ]
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 14,
                              color: selectedExam == null
                                  ? nonActiveColor
                                  : activeColor,
                            ),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedExam = value.toString();
                  });
                },
                onSaved: (value) {
                  setState(() {
                    selectedExam = value.toString();
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: IconStyleData(
                    icon: Icon(
                  Icons.expand_more,
                  color: selectedExam == null ? nonActiveColor : activeColor,
                )),
                dropdownStyleData: DropdownStyleData(
                  offset: Offset(0, -10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:
                          selectedExam == null ? nonActiveColor : activeColor,
                    ),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
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
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          selectedExam == null ? nonActiveColor : activeColor,
                      width: 1.0,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color:
                          selectedExam == null ? nonActiveColor : activeColor,
                      width: 1,
                    ),
                  ),
                ),
                hint: Text(
                  'Coaching Type',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 14,
                  ),
                ),
                items: ["9th", "10th", "11th", "12th"]
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 14,
                            color: Color.fromRGBO(125, 35, 224, 1),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  selectedExam = value.toString();
                },
                onSaved: (value) {
                  selectedExam = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                    icon: Icon(
                  Icons.expand_more,
                )),
                dropdownStyleData: DropdownStyleData(
                  offset: Offset(0, -10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:
                          selectedExam == null ? nonActiveColor : activeColor,
                    ),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 42,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(125, 35, 225, 1),
                      width: 1.0,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(125, 35, 225, 1),
                      width: 1,
                    ),
                  ),
                ),
                hint: Text(
                  'Course Type',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 14,
                  ),
                ),
                items: ["9th", "10th", "11th", "12th"]
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 14,
                            color: Color.fromRGBO(125, 35, 224, 1),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  selectedClass = value.toString();
                },
                onSaved: (value) {
                  selectedClass = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                    icon: Icon(
                  Icons.expand_more,
                )),
                dropdownStyleData: DropdownStyleData(
                  offset: Offset(0, -10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color.fromRGBO(125, 35, 224, 1),
                    ),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
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
