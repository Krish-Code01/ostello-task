import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropdown extends StatefulWidget {
  final String initialValue;
  final List<String> items;
  final Function(String) onChanged;
  final String hintText;
  final double dropdownHeight;
  final double dropdownWidth;

  CustomDropdown({
    required this.initialValue,
    required this.items,
    required this.onChanged,
    required this.hintText,
    this.dropdownHeight = 42.0,
    this.dropdownWidth = 160.0,
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool isDropdownOpened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.dropdownHeight,
          width: widget.dropdownWidth,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                isDropdownOpened = !isDropdownOpened;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Tooltip(
                      message: widget.initialValue,
                      child: Text(
                        widget.initialValue,
                        overflow: TextOverflow.ellipsis, // Handle overflow
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    isDropdownOpened
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (isDropdownOpened)
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(top: 4.0),
            width: widget.dropdownWidth,
            height: 100,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    widget.onChanged(widget.items[index]);
                    setState(() {
                      isDropdownOpened = false;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(widget.items[index]),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
