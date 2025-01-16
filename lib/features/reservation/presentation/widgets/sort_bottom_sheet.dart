import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import 'drop_down_accordion.dart';
import 'reset_all_button_widget.dart';
import 'show_results_button_widget.dart';

class SortBottomSheet extends StatefulWidget {
  const SortBottomSheet({super.key});

  @override
  SortBottomSheetState createState() => SortBottomSheetState();
}

class SortBottomSheetState extends State<SortBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double sheetHeight = constraints.maxHeight;

        return Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sort By:",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: AppColors.primaryBlue),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: sheetHeight * 0.7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DropDownAccordion(
                        title: 'Status',
                        options: const ['Reserved', 'Not Reserved'],
                        onOptionSelected: (selected) {},
                      ),
                      const SizedBox(height: 12),
                      DropDownAccordion(
                        title: 'Price',
                        options: const ['High to Low', 'Low to High'],
                        onOptionSelected: (selected) {},
                      ),
                      const SizedBox(height: 12),
                      DropDownAccordion(
                        title: 'Date',
                        options: const ['Newest', 'Oldest'],
                        onOptionSelected: (selected) {},
                      ),
                    ],
                  ),
                ),
              ),
              const ShowResultsButtonWidget(),
              const SizedBox(height: 8.0),
              const ResetAllButtonWidget(),
            ],
          ),
        );
      },
    );
  }
}
