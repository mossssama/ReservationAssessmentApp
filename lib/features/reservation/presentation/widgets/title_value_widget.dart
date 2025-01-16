import 'package:flutter/material.dart';

class TitleValueWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color titleColor;
  final Color valueColor;
  final FontWeight? titleFontWeight;
  final FontWeight? valueFontWeight;

  const TitleValueWidget({
    super.key,
    required this.title,
    required this.titleColor,
    required this.value,
    required this.valueColor,
    this.titleFontWeight,
    this.valueFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: titleFontWeight ?? FontWeight.bold,
            color: titleColor,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: titleFontWeight ?? FontWeight.normal,
            color: valueColor,
          ),
        ),
      ],
    );
  }
}
