import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 230,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/material-symbols_trophy.png",
                                  width: 20,
                                  height: 20,
                                ),
                                Text(
                                  "Bestseller",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 95, 248),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 255, 210, 49),
                                ),
                              ),
                              Text(
                                "Engineering",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rs. 12000",
                            style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            "Rs. 9000 only",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 95, 248),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "for one year",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.book,
                      color: Colors.blue,
                      size: 15.0,
                    ),
                    Text(
                      "Physics. Chemistry. Maths",
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                          ),
                          SizedBox(width: 4.0),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.blue,
                            child: Text("A"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.red,
                            child: Text("B"),
                          ),
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.green,
                          child: Text("C"),
                        ),
                      ],
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "50+ students already enrolled!",
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 8.0,
                    left: 5,
                    right: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onPrimary: Color.fromARGB(255, 126, 48, 235),
                          side: BorderSide(
                            color: Color.fromARGB(255, 126, 48, 235),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          backgroundColor: Colors.white,
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                        child: Text('Add To Cart'),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 126, 48, 235),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Text('Equire Now'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 180),
            height: 150,
            width: 230,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 124, 33, 243),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BulletPointItem(
                    text:
                        "1 Year Power Step Classroom Course for JEE (Main & Advance)",
                  ),
                  BulletPointItem(
                    text:
                        "2 Year First Step Integrated Classroom Course (Main & Advance)",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BulletPointItem extends StatelessWidget {
  final String text;

  BulletPointItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.only(top: 4.0, right: 8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
