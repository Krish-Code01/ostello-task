import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VideoCards extends StatelessWidget {
  const VideoCards({super.key});

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
                "Look what's happening around",
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
        Container(
          margin: EdgeInsets.only(
            top: 21,
          ),
          height: 459.31036376953125,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(),
                Card(),
                Card(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(23),
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/1ee5/6c31/573d985c409cdaa138884af1b3c469e7?Expires=1696204800&Signature=NMV4d48~APT1l3SxEKF4isMyTya0R1cBp8KlnTHA04s3Mm8LRtnrNry3jbVBFvPYTjyNym6LynmGTTgmdZweGC42vG28JRTi9ULjOqOOOvfOebbFWMyr0~0rb7CNKXXUt9SaVlqYdzHdm-Gx7ur8dhJPgYYA~vD3s0M7Bbwyyd0VQd3PpAGD~Nn4RJBSje9y6UJexxSCg37VaJ7sqfi5fcdVBrIVtyAONB1E49dph0E8n7Ek7tvulBs2jM8cg-nX~LWPVGuADjRtnfDrwktHNdnXdR9I8fnP80-4yxT-GWdM9nS~JMAwCgMtu44scy7mlYlYcKoKRPHabcwwM4A70w__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
              fit: BoxFit.cover,
              width: 333,
              height: 459.31036376953125,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 175,
              top: 012,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "assets/images/ph_eye-fill.svg",
                  width: 25.83618927001953,
                  height: 27.224138259887695,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "100K Views",
                  style: TextStyle(
                    fontSize: 18.97927474975586,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Avenir",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 131,
              top: 183,
            ),
            child: SvgPicture.asset(
              "assets/images/gridicons_play.svg",
              width: 57.41379928588867,
              height: 57.41381072998047,
            ),
          ),
          Container(
            height: 60.7517318725586,
            width: 333,
            margin: EdgeInsets.only(top: 361),
            decoration: BoxDecoration(
              color: Color(0xfff2e6ff),
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        "https://s3-alpha-sig.figma.com/img/4aa8/6637/78dc9138092a40c2c865ad16e7e0338c?Expires=1696204800&Signature=eZFWfRjUU9iDexzaOG~cvXGcpTK2ppmfceqA1cUpbocVsYmvM7JZ6bzFC0u~FwWwP9qQZw059g78sSE4gSNZO~Zi9m5nGVXVraoG6ZAGFicCOoDSNZanDlu~~ChDaFWXKD44IbHuRjEtbaMg60COvjDKHFVCjaYlxznkI8ePGmtmACYjb6wRRa8WAtRzd5JNdfjiKRMqJpHUKhuF-FJpWb-KN7-TYvL3u528CDNzn0X~UM1Xs~7hu6OkCUPt36eHCjg7BQL7NS3XZeZJ6B-MMUeJ9ZH2HjMGz0QoCB4Y0ATDWek5CRIkUmEOdLpgBpdKsZkJVgvvIBVtXNkwNQt3uQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                        width: 41.337928771972656,
                        height: 41.337928771972656,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "Akash Institute",
                      style: TextStyle(
                        fontSize: 20.668964385986328,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 23,
                        top: 0,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 101,
                            height: 37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.green,
                              ),
                              color: Color(0xffe0ffee),
                            ),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              fontSize: 16.142855644226074,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w500,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 333,
            height: 36.74482727050781,
            margin: EdgeInsets.only(
              top: 422,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color(0xff374afd),
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/Screenshot 2023-09-19 at 10.18.53 AM.png",
                        width: 50.337928771972656,
                        height: 20.337928771972656,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "350+ online community",
                      style: TextStyle(
                        fontFamily: "Avenir",
                        fontSize: 19.69354820251465,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
