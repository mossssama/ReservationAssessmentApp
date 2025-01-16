import 'package:flutter/material.dart';

class ResetAllButtonWidget extends StatelessWidget {
  const ResetAllButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Reset All',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
