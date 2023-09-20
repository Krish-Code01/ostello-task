import 'package:flutter/material.dart';
import 'package:ostello_demo/screens/add_review_screen.dart';
import 'package:ostello_demo/screens/institute_info_screen.dart';
import 'package:ostello_demo/screens/reviews_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff7d23e0),
      ),
      home: InstituteInfoScreen(),
      routes: {
        ReviewsScreen.routeName: (ctx) => ReviewsScreen(),
        AddReviewScreen.routeName: (ctx) => AddReviewScreen(),
      },
    );
  }
}
