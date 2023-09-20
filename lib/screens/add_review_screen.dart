import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rating_bar_flutter/rating_bar_flutter.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({super.key});
  static const routeName = "/addReviewScreen";

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  double _rating = 0;
  final _descriptionFocusNode = FocusNode();
  var maxWord = 50;
  var wordCount = 0;

  int countWords(String text) {
    if (text == null || text.isEmpty) {
      return 0;
    }
    List<String> words = text.split(RegExp(r'\s+'));

    return words.where((word) => word.isNotEmpty).length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 20,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 14,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromRGBO(125, 35, 224, 1),
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Reviews & Ratings",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 43,
            ),
            Container(
              height: 135,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 14,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 0.2,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 19,
                      top: 16,
                    ),
                    child: Text(
                      "Add Rating",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 19),
                    child: RatingBarFlutter(
                      onRatingChanged: (rating) => setState(
                        () => _rating = rating!,
                      ),
                      filledIcon: Icons.star_rounded,
                      emptyIcon: Icons.star_outline_rounded,
                      halfFilledIcon: Icons.star_half,
                      isHalfAllowed: true,
                      filledColor: Theme.of(context).primaryColor,
                      emptyColor: Colors.black,
                      halfFilledColor: Theme.of(context).primaryColor,
                      size: 58,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 268,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 13,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 0.2,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 19,
                      top: 16,
                    ),
                    child: Text(
                      "Add Rating",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                        child: TextFormField(
                          focusNode: _descriptionFocusNode,
                          maxLines: 8,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Color.fromRGBO(224, 224, 224, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            prefixIconColor: Colors.black,
                          ),
                          onChanged: (value) {
                            setState(() {
                              wordCount = countWords(value);
                            });
                          },
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 295,
                        child: Text(
                          '${wordCount.toString()}/${maxWord.toString()}',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Avenir",
                            color: wordCount <= maxWord
                                ? Color.fromRGBO(52, 52, 52, 1)
                                : Colors.red,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
