import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366,
      height: 197,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xfffafafa),
        border: Border.all(
          color: Color.fromRGBO(109, 109, 109, 0.1),
          width: 1.0,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 18),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                SvgPicture.asset(
                  "assets/images/ri_time-fill.svg",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Hours: ",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(
                      109,
                      109,
                      109,
                      1,
                    ),
                  ),
                ),
                Text(
                  "Open ",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(
                      0,
                      213,
                      102,
                      1,
                    ),
                  ),
                ),
                Text(
                  "⋅ Opens 10 am every day",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(
                      109,
                      109,
                      109,
                      1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 18,
                ),
                SvgPicture.asset(
                  "assets/images/mdi_location.svg",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "No 374, 2nd Floor Kohat Enclave, Pitampura Near \nKohat Metro Station, New Delhi, Delhi 110034",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(
                      109,
                      109,
                      109,
                      1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 18,
                ),
                SvgPicture.asset(
                  "assets/images/game-icons_path-distance.svg",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "2 kms away from you . 15 mins",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(
                      109,
                      109,
                      109,
                      1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              width: 328,
              child: SvgPicture.asset("assets/images/dotted_line.svg"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    SvgPicture.asset(
                      "assets/images/Group.svg",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Copy Location",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(
                          109,
                          109,
                          109,
                          1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/material-symbols_directions-sharp.svg",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Copy Location",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(
                          109,
                          109,
                          109,
                          1,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 83,
                  height: 30,
                  margin: EdgeInsets.only(left: 26),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Color(0xff7d23e0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Chat",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/images/mdi_customer-service.svg",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
