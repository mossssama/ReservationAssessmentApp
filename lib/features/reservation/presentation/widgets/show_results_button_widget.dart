import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class ShowResultsButtonWidget extends StatelessWidget {
  const ShowResultsButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryPurple,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: const Text(
          'Show Results',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
