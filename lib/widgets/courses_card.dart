import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CourseCards extends StatelessWidget {
  const CourseCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            height: 500,
            width: 230,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Rectangle 19996 (1).png',
                            width: double.infinity,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.play_circle_filled),
                      iconSize: 50,
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Physics Foundation Course",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Rs. 1700",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Rs. 1000 per month",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 4),
                          Text("1 Year Course Duration"),
                        ],
                      ),
                      SizedBox(height: 16),
                      Container(
                        margin: EdgeInsets.only(left: 05),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Buy Now"),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 126, 48, 235),
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 70,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Add to Cart"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onPrimary: Color.fromARGB(255, 126, 48, 235),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 126, 48, 235),
                                ),
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 60,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text("• Recorded lectures by Ostello"),
                          SizedBox(height: 4),
                          Text("• Full lifetime access"),
                          SizedBox(height: 4),
                          Text("• Exercise files"),
                          SizedBox(height: 4),
                          Text("• Mock tests and assignments"),
                          SizedBox(height: 4),
                          Text("• Doubt clearing sessions"),
                          SizedBox(height: 4),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
