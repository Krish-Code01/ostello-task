import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/Rectangle 19996.png",
            width: 390,
            height: 280,
          ),
          Container(
            color: Colors.white,
            height: 45,
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Stack(
              children: [
                Container(
                  width: 71,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Color(0xff374afd),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, top: 2),
                  child: Image.asset(
                    "assets/images/image 153.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, top: 6.5),
                  child: Text(
                    "Verified",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 275, top: 50),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 71,
                  height: 25,
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
                    fontSize: 11.142855644226074,
                    fontWeight: FontWeight.w500,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 350),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/Ellipse 957.png",
                  width: 25,
                  height: 25,
                ),
                Image.asset(
                  "assets/images/ri_bookmark-line.png",
                  width: 20,
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
