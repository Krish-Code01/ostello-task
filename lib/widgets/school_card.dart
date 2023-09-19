import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SchoolCard extends StatelessWidget {
  const SchoolCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 12,
              bottom: 14,
              top: 18,
            ),
            child: Text(
              "Students from these schools study here",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                fontFamily: "Avenir",
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 178,
                          height: 81,
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color.fromRGBO(248, 251, 253, 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 0.2,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.network(
                              "https://s3-alpha-sig.figma.com/img/a611/10c8/bbc34dfd45f52bbe1eade7696617f293?Expires=1696204800&Signature=M30UDEMWaJ8Py6RXBSFFuwp9asZrNKRysU2cfViDY6NGM-h6NrVh6L7RM5bE1NnPEHN3uLsAUgWO9mdQ8nQO~MSfJlVN~VBI0wMgzRu4J~q5kIKy7UKkv3U9oBc5rdKHP9FzSjL6~JZv2sC2UmkeDnqR4M~~U7Or1ElqrLEpm5N5nsHgS-GA8CvY8KUF9qYR2YokjzzyldLTfeVfJX6sHNf4OJH6InNHHZy75OAaaUiMahMnOEo0DX6YUyoVQBCjpXnNAt86doV0AwqEOlMtG0fTpBfd-FeyvcXkF4fvKywVVbkvsQlH7lmKT-Ec9x8IiD~gviRewvc~iWTCzepWeQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "DPS RK Puram",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 178,
                          height: 81,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color.fromRGBO(248, 251, 253, 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 0.2,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.network(
                              "https://s3-alpha-sig.figma.com/img/a611/10c8/bbc34dfd45f52bbe1eade7696617f293?Expires=1696204800&Signature=M30UDEMWaJ8Py6RXBSFFuwp9asZrNKRysU2cfViDY6NGM-h6NrVh6L7RM5bE1NnPEHN3uLsAUgWO9mdQ8nQO~MSfJlVN~VBI0wMgzRu4J~q5kIKy7UKkv3U9oBc5rdKHP9FzSjL6~JZv2sC2UmkeDnqR4M~~U7Or1ElqrLEpm5N5nsHgS-GA8CvY8KUF9qYR2YokjzzyldLTfeVfJX6sHNf4OJH6InNHHZy75OAaaUiMahMnOEo0DX6YUyoVQBCjpXnNAt86doV0AwqEOlMtG0fTpBfd-FeyvcXkF4fvKywVVbkvsQlH7lmKT-Ec9x8IiD~gviRewvc~iWTCzepWeQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "DPS RK Puram",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 178,
                          height: 81,
                          margin: EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color.fromRGBO(248, 251, 253, 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 0.2,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.network(
                              "https://s3-alpha-sig.figma.com/img/a611/10c8/bbc34dfd45f52bbe1eade7696617f293?Expires=1696204800&Signature=M30UDEMWaJ8Py6RXBSFFuwp9asZrNKRysU2cfViDY6NGM-h6NrVh6L7RM5bE1NnPEHN3uLsAUgWO9mdQ8nQO~MSfJlVN~VBI0wMgzRu4J~q5kIKy7UKkv3U9oBc5rdKHP9FzSjL6~JZv2sC2UmkeDnqR4M~~U7Or1ElqrLEpm5N5nsHgS-GA8CvY8KUF9qYR2YokjzzyldLTfeVfJX6sHNf4OJH6InNHHZy75OAaaUiMahMnOEo0DX6YUyoVQBCjpXnNAt86doV0AwqEOlMtG0fTpBfd-FeyvcXkF4fvKywVVbkvsQlH7lmKT-Ec9x8IiD~gviRewvc~iWTCzepWeQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "DPS RK Puram",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
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
