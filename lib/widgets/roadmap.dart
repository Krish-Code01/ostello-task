import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Roadmap extends StatelessWidget {
  const Roadmap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: ClipRRect(
        child: Image.asset(
          "assets/images/roadmap.png",
        ),
      ),
    );
  }
}
