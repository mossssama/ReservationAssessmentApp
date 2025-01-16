import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import 'drop_down_accordion.dart';
import 'reset_all_button_widget.dart';
import 'show_results_button_widget.dart';
import 'title_value_slider.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  FilterBottomSheetState createState() => FilterBottomSheetState();
}

class FilterBottomSheetState extends State<FilterBottomSheet> {
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
                "Filter By:",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryBlue,
                ),
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
                        title: 'Location',
                        options: const ['El-Sheikh Zayed', 'Fifth Settlement'],
                        onOptionSelected: (selected) {},
                      ),
                      const SizedBox(height: 12),
                      TitleValueSliderWidget(
                        title: "Price",
                        min: 1,
                        max: 8,
                        initialMinValue: 3,
                        initialMaxValue: 6,
                        onChanged: (RangeValues values) {
                          // print("Selected range: ${values.start}M to ${values.end}M");
                        },
                      )
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
