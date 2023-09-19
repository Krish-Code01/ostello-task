import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Toppers extends StatelessWidget {
  const Toppers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 475,
        width: 366,
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Color(0xfff2f7fb),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "JEE (Advanced) Toppers 2023 Batch",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w800,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 165.38043212890625,
                            height: 173.69566345214844,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color(0xff374afd),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 17,
                              vertical: 17,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/dd78/7f80/b56b2a7a8a460b9b0009a1e2af4b9cc1?Expires=1696204800&Signature=CcOnF8cdAie8YnPD~eI8wwwUJMTklEIkhqGIZD-GKRrv868C7AVW7CHlLKY5hncrZ~t2A1ZkfLMJLufLMsN1KPbqD-xRcV-iOoI1e4e8jsCyafJyaboz3swfp7wE4vRNhZjuOpOdbBSLCwpSn2fRNadasVIG~cdO5kd0VnrgR5Z9kzbil70U4Ludt3iQ2B9v2o-6i~Kv8co4014gNk2HM6rcsQIOgDsjOFreFDw59bltwR1oaJmUGJDII63xr3KeJC~lVr3DIzrcePs8J-oSPrUQXLXmbLP971-UZVMurKJ6nMFgRN6bFylWZ093mWdU64Jlz6fG7EsykQ4EJCztWA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                height: 130,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 110, top: 8),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(253, 216, 53, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "AIR",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 161,
                            height: 49,
                            margin: EdgeInsets.only(left: 2, top: 123),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Aditya Neeraje",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  "2 Year Classroom",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 165.38043212890625,
                            height: 173.69566345214844,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color(0xff374afd),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 17,
                              vertical: 17,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/dd78/7f80/b56b2a7a8a460b9b0009a1e2af4b9cc1?Expires=1696204800&Signature=CcOnF8cdAie8YnPD~eI8wwwUJMTklEIkhqGIZD-GKRrv868C7AVW7CHlLKY5hncrZ~t2A1ZkfLMJLufLMsN1KPbqD-xRcV-iOoI1e4e8jsCyafJyaboz3swfp7wE4vRNhZjuOpOdbBSLCwpSn2fRNadasVIG~cdO5kd0VnrgR5Z9kzbil70U4Ludt3iQ2B9v2o-6i~Kv8co4014gNk2HM6rcsQIOgDsjOFreFDw59bltwR1oaJmUGJDII63xr3KeJC~lVr3DIzrcePs8J-oSPrUQXLXmbLP971-UZVMurKJ6nMFgRN6bFylWZ093mWdU64Jlz6fG7EsykQ4EJCztWA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                height: 130,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 110, top: 8),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(253, 216, 53, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "AIR",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 161,
                            height: 49,
                            margin: EdgeInsets.only(left: 2, top: 123),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Aditya Neeraje",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  "2 Year Classroom",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 58),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 165.38043212890625,
                            height: 173.69566345214844,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              color: Color(0xff374afd),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 17,
                              vertical: 17,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/dd78/7f80/b56b2a7a8a460b9b0009a1e2af4b9cc1?Expires=1696204800&Signature=CcOnF8cdAie8YnPD~eI8wwwUJMTklEIkhqGIZD-GKRrv868C7AVW7CHlLKY5hncrZ~t2A1ZkfLMJLufLMsN1KPbqD-xRcV-iOoI1e4e8jsCyafJyaboz3swfp7wE4vRNhZjuOpOdbBSLCwpSn2fRNadasVIG~cdO5kd0VnrgR5Z9kzbil70U4Ludt3iQ2B9v2o-6i~Kv8co4014gNk2HM6rcsQIOgDsjOFreFDw59bltwR1oaJmUGJDII63xr3KeJC~lVr3DIzrcePs8J-oSPrUQXLXmbLP971-UZVMurKJ6nMFgRN6bFylWZ093mWdU64Jlz6fG7EsykQ4EJCztWA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                height: 130,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 110, top: 8),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(253, 216, 53, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "AIR",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 161,
                            height: 49,
                            margin: EdgeInsets.only(left: 2, top: 123),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Aditya Neeraje",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  "2 Year Classroom",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 165.38043212890625,
                            height: 173.69566345214844,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              color: Color(0xff374afd),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 17,
                              vertical: 17,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/dd78/7f80/b56b2a7a8a460b9b0009a1e2af4b9cc1?Expires=1696204800&Signature=CcOnF8cdAie8YnPD~eI8wwwUJMTklEIkhqGIZD-GKRrv868C7AVW7CHlLKY5hncrZ~t2A1ZkfLMJLufLMsN1KPbqD-xRcV-iOoI1e4e8jsCyafJyaboz3swfp7wE4vRNhZjuOpOdbBSLCwpSn2fRNadasVIG~cdO5kd0VnrgR5Z9kzbil70U4Ludt3iQ2B9v2o-6i~Kv8co4014gNk2HM6rcsQIOgDsjOFreFDw59bltwR1oaJmUGJDII63xr3KeJC~lVr3DIzrcePs8J-oSPrUQXLXmbLP971-UZVMurKJ6nMFgRN6bFylWZ093mWdU64Jlz6fG7EsykQ4EJCztWA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                height: 130,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 110, top: 8),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(253, 216, 53, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "AIR",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 161,
                            height: 49,
                            margin: EdgeInsets.only(left: 2, top: 123),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Aditya Neeraje",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  "2 Year Classroom",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
