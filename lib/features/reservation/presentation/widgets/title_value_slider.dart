import 'package:flutter/material.dart';

import '../../../../core/assets.dart';
import '../../../../core/colors.dart';
import '../../../../core/shared_widgets/svg_image_widget.dart';

class TitleValueSliderWidget extends StatefulWidget {
  final String title;
  final double min;
  final double max;
  final double initialMinValue;
  final double initialMaxValue;
  final ValueChanged<RangeValues> onChanged;

  const TitleValueSliderWidget({
    super.key,
    required this.title,
    required this.min,
    required this.max,
    required this.initialMinValue,
    required this.initialMaxValue,
    required this.onChanged,
  });

  @override
  TitleValueSliderWidgetState createState() => TitleValueSliderWidgetState();
}

class TitleValueSliderWidgetState extends State<TitleValueSliderWidget> {
  bool isExpanded = false;
  late RangeValues currentRange;

  @override
  void initState() {
    super.initState();
    currentRange = RangeValues(widget.initialMinValue, widget.initialMaxValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.primaryGrey,
          height: 40,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            title: Text(widget.title),
            trailing: isExpanded
                ? const SvgImageWidget(
                    svgPath: Assets.smallArrowIcon,
                    size: 10,
                  )
                : const SvgImageWidget(
                    svgPath: Assets.smallArrowIcon,
                    size: 10,
                  ),
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        ),
        if (isExpanded)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                RangeSlider(
                  values: currentRange,
                  min: widget.min,
                  max: widget.max,
                  onChanged: (values) {
                    setState(() {
                      currentRange = values;
                      widget.onChanged(values);
                    });
                  },
                  activeColor: AppColors.primaryPurple,
                  inactiveColor: Colors.grey[300],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.min.toInt()}M",
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "${widget.max.toInt()}M",
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
      ],
    );
  }
}
