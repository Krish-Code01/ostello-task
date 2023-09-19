import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Instructor extends StatelessWidget {
  const Instructor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 13, right: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Meet The Instructors",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 31, left: 13, right: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InstructorProfile(),
              InstructorProfile(),
              InstructorProfile(),
            ],
          ),
        ),
      ],
    );
  }
}

class InstructorProfile extends StatelessWidget {
  const InstructorProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0.2,
                blurRadius: 4,
                offset: Offset(2, 0),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(75),
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/dd78/7f80/b56b2a7a8a460b9b0009a1e2af4b9cc1?Expires=1696204800&Signature=CcOnF8cdAie8YnPD~eI8wwwUJMTklEIkhqGIZD-GKRrv868C7AVW7CHlLKY5hncrZ~t2A1ZkfLMJLufLMsN1KPbqD-xRcV-iOoI1e4e8jsCyafJyaboz3swfp7wE4vRNhZjuOpOdbBSLCwpSn2fRNadasVIG~cdO5kd0VnrgR5Z9kzbil70U4Ludt3iQ2B9v2o-6i~Kv8co4014gNk2HM6rcsQIOgDsjOFreFDw59bltwR1oaJmUGJDII63xr3KeJC~lVr3DIzrcePs8J-oSPrUQXLXmbLP971-UZVMurKJ6nMFgRN6bFylWZ093mWdU64Jlz6fG7EsykQ4EJCztWA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
              width: 67.48125457763672,
              height: 67.48125457763672,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            "Piyush Mehta",
            style: TextStyle(
              fontSize: 13.72499942779541,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          "Physics",
          style: TextStyle(
            fontSize: 11.4375,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
