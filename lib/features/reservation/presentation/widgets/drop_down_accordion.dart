import 'package:flutter/material.dart';
import 'package:madmon_assessment_app/core/assets.dart';
import 'package:madmon_assessment_app/features/reservation/presentation/widgets/flipper_widget.dart';

import '../../../../core/colors.dart';
import '../../../../core/shared_widgets/svg_image_widget.dart';

class DropDownAccordion extends StatefulWidget {
  final String title;
  final List<String> options;
  final ValueChanged<String?> onOptionSelected;

  const DropDownAccordion({
    super.key,
    required this.title,
    required this.options,
    required this.onOptionSelected,
  });

  @override
  DropDownAccordionState createState() => DropDownAccordionState();
}

class DropDownAccordionState extends State<DropDownAccordion> {
  bool isExpanded = false;
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.primaryGrey,
          height: 40,
          child: Center(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              title: Text(widget.title),
              trailing: isExpanded ? const FlipperWidget(child: SvgImageWidget(svgPath: Assets.smallArrowIcon, size: 10)) : const SvgImageWidget(svgPath: Assets.smallArrowIcon, size: 10),
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ),
        ),
        if (isExpanded)
          ...widget.options.map((option) => ListTile(
                title: Text(option),
                trailing: Checkbox(
                  value: selectedOption == option,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value == true ? option : null;
                      widget.onOptionSelected(selectedOption);
                    });
                  },
                ),
              )),
      ],
    );
  }
}
