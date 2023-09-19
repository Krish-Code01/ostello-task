import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 47,
            color: Colors.white,
          ),
          Container(
            child: Stack(
              children: [
                ClipRect(
                  child: Align(
                    alignment:
                        Alignment.bottomCenter, // Align the image to the bottom
                    child: Image.network(
                      alignment: Alignment.topCenter,
                      "https://s3-alpha-sig.figma.com/img/d39d/d06a/853b81c1f6a72363a2e3d66c9ff28c34?Expires=1696204800&Signature=LK0nPxfnxB9vVXHYTzWOqrGWD~dVjWt0P5x8B963SCpxktM~nZp1IDO0HHRq4O3agy-NAAjpwSOl2t0yP4JSdRnw9mRsjp8iBmgae-GEjOSPkUhfjybSEtUl8EfANrtLAbJLuslr2yWJfK142HbPNEdrz~1KiGtkC7fJ45TC~Cfp4LKA5zEspfq~xiT1OldjgC7g1sXY9kjywy92wc3Y6Ljw1sRLW74Fuz6JE7SXEo6LWsx5Tpr~~2-xWI~~Nn1Y43AfIpZHkTTuHgcE4OeVoSQ7DaejCeXL0MqbTr6Tm~pqWvv5wdwQ11E0B-j0jjp5o~ptYFf~X3JNjzAT14BDdQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                      height: 233,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 17),
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
                        margin: EdgeInsets.only(left: 47, top: 3),
                        child: Image.network(
                          "https://s3-alpha-sig.figma.com/img/0d06/4814/730ff09da608ca86b6a52ea9f4b4053d?Expires=1696204800&Signature=oNud~Dxd95MgUh7an0dC0GyXhQgCoskS3gvXecgaiu5qZYgwMFbV7HNhVOFev5zIcBIh5j9xrLfhbg9~LNhcvGH1TszbYynk3aAkAEA0CGyy7AQX5-jOhlMWdmMDLMDVmcleNkq9XEr194pysi3AQnZfTDAAvO7Wj1SDTsNr4TEc9X8Sc80Vrc8Zx0BMK6eoGRhZe34qA4VzOHwKgMHwfgj77PgEodlQ-gWRVof-7ApTfmwJEEK5e2RtEsQASAWBvURncsRPnfHoqvktsZsZQFo4cpGFQ69vxEKpYuvvPZ3OSfoRgJ8Lqt0iIu2MtAjbmhqnVEgG62bLPJWNxzztdw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
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
                              fontFamily: "Avenir",
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 279, top: 19),
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
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 19, left: 353),
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.bookmark_outline,
                    color: Color(0xff7e24e1),
                    size: 14,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
