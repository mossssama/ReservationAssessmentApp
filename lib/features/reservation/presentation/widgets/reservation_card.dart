import 'package:flutter/material.dart';

import '../../../../core/assets.dart';
import '../../../../core/colors.dart';
import '../../../../core/shared_widgets/svg_image_widget.dart';
import 'flipper_widget.dart';
import 'title_double_value_widget.dart';
import 'title_value_widget.dart';

class ReservationCard extends StatefulWidget {
  final String status;
  final String unitPrice;
  final String commission;
  final String dateReserved;
  final String lastAction;

  const ReservationCard({
    super.key,
    required this.status,
    required this.unitPrice,
    required this.commission,
    required this.dateReserved,
    required this.lastAction,
  });

  @override
  ReservationCardState createState() => ReservationCardState();
}

class ReservationCardState extends State<ReservationCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: const BorderSide(color: AppColors.secondaryPurple, width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '#131256765444444',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        SvgImageWidget(
                          svgPath: Assets.pointerIcon,
                          size: 16,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          'Fifth Settlement',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 164,
                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: _getFontColor(widget.status)),
                    color: _getStatusColor(widget.status),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      widget.status,
                      style: TextStyle(color: _getFontColor(widget.status)),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            const TitleDoubleValuesWidget(
                title: "Seller Info",
                value1: "Abd El-Rahman Ahmed",
                value2: "0122874620",
                icon: SvgImageWidget(
                  svgPath: Assets.phoneIcon,
                  size: 16,
                )),
            if (isExpanded) ...[
              const Divider(),
              ...[
                const TitleDoubleValuesWidget(title: "Buyer Info", value1: "Abd El-Rahman Ahmed", value2: "0122874620", icon: SvgImageWidget(svgPath: Assets.phoneIcon, size: 16)),
                const Divider(),
              ],
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleValueWidget(title: "Unit Price", titleColor: Colors.black, value: widget.unitPrice, valueColor: Colors.red, valueFontWeight: FontWeight.bold),
                  TitleValueWidget(title: "Commission", titleColor: Colors.black, value: widget.commission, valueColor: Colors.red, valueFontWeight: FontWeight.bold),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleValueWidget(title: "Date Reserved", titleColor: Colors.black, value: widget.dateReserved, valueColor: Colors.grey),
                  TitleValueWidget(title: "Last Action", titleColor: Colors.black, value: widget.lastAction, valueColor: Colors.grey),
                ],
              ),
              const Divider(),
              const Row(
                children: [
                  SvgImageWidget(svgPath: Assets.linesIcon, size: 14),
                  SizedBox(width: 8.0),
                  Text('See Notes', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ],
            const SizedBox(height: 8),
            const Divider(height: 0),
            Center(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                icon: isExpanded ? const FlipperWidget(child: SvgImageWidget(svgPath: Assets.bigArrowIcon, size: 12)) : const SvgImageWidget(svgPath: Assets.bigArrowIcon, size: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Contract Signed':
        return Colors.green;
      case 'No Answer':
        return Colors.red;
      case 'New':
        return Colors.white;
      case 'Commission':
        return Colors.grey;
      case 'Follow Up':
        return AppColors.primaryPurple;
      default:
        return AppColors.primaryBlue;
    }
  }

  Color _getFontColor(String status) {
    switch (status) {
      case 'Contract Signed':
      case 'No Answer':
      case 'Commission':
      case 'Meeting Scheduled':
      case 'Follow Up':
        return Colors.white;
      case 'New':
      default:
        return AppColors.primaryBlue;
    }
  }
}
