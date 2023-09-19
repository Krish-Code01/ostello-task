import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          Text(
            'Why Choose Akash?',
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'To stay ahead with all-round performance in your chosen stream',
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          FAQSection(),
        ],
      ),
    );
  }
}

class FAQSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FAQTile(
          question: 'Teaching Methodology',
          answer: 'Description here',
        ),
        FAQTile(
          question: 'Study Material',
          answer: 'Description here',
        ),
        FAQTile(
          question: 'Regular Tests & Assesments',
          answer: 'Description here',
        ),
        FAQTile(
          question: 'Doubt Clearing Sessions',
          answer: 'Description here',
        ),
        FAQTile(
          question: 'Feedback System',
          answer: 'Description here',
        ),
        FAQTile(
          question: 'Omni-Channel Learning',
          answer: 'Description here',
        ),
      ],
    );
  }
}

class FAQTile extends StatefulWidget {
  final String question;
  final String answer;

  FAQTile({required this.question, required this.answer});

  @override
  _FAQTileState createState() => _FAQTileState();
}

class _FAQTileState extends State<FAQTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 0.2,
                blurRadius: 4,
                offset: Offset(4, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 21),
          child: Column(
            children: <Widget>[
              Container(
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        widget.question,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Avenir",
                          fontSize: 14,
                          color: Color.fromRGBO(
                            90,
                            90,
                            90,
                            1,
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(115, 41, 216, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            isExpanded ? Icons.expand_less : Icons.expand_more,
                            size: 15,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (isExpanded)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(widget.answer),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
