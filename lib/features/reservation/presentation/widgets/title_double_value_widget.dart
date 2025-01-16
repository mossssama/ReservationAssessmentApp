import 'package:flutter/material.dart';

class TitleDoubleValuesWidget extends StatelessWidget {
  final String title;
  final String value1;
  final String value2;
  final Widget icon;

  const TitleDoubleValuesWidget({
    super.key,
    required this.title,
    required this.value1,
    required this.value2,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          value1,
          style: const TextStyle(color: Colors.grey),
        ),
        Row(
          children: [
            icon,
            const SizedBox(width: 4.0),
            Text(
              value2,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
