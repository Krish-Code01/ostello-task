import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PreviousYearPapers extends StatelessWidget {
  const PreviousYearPapers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Previous Year Papers",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "view all >",
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(144, 43, 255, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              child: Row(
                children: [
                  QuestionPaperCard(),
                  SizedBox(
                    width: 10,
                  ),
                  QuestionPaperCard(),
                  SizedBox(
                    width: 10,
                  ),
                  QuestionPaperCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionPaperCard extends StatelessWidget {
  const QuestionPaperCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147,
      height: 68,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xfff9f3ff),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0.2,
            blurRadius: 4,
            offset: Offset(-2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/35b2/f59d/2d30d9aa7238bb28c8bf0d065a104f83?Expires=1696204800&Signature=SWXM60-qB2bmQZj7USmwj6OvjD81ITZdhTMrR7XeeRBgxC2E~k1mnigLsph9OgaAUNpyCQFP-oh2n7a6EurOmj4E7nTueZUuQZBKNVYbST6tCgBH4x5OCALiVI0cTRmVsfRvH7OqdzkJZ3-~LsFbWlEQJr42Vhbav2AhIkaP927n9iTMDgaRspPiHzf-Y6AQ6NJix72dSpAgPWcAAcZQzFyTLJOFQ2H5h6V7oCvLogWC-mOX82nXBJKHHcFZuwIgSNsHo7K8Df3PB1bIQ2Rr0KZgWaNC-WQLPK0Ch0Uuf7FpIHcVVYj~w79ftcHIxan80~MjL-zFsOg47KTThayIIw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
              height: 52,
              width: 52,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2022",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "2 Paper",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(125, 35, 224, 1),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
