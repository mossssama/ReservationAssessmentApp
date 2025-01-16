import 'package:flutter/material.dart';
import 'package:madmon_assessment_app/core/colors.dart';

import '../../../../core/assets.dart';
import '../../../../core/shared_widgets/svg_image_widget.dart';
import '../widgets/custom_bottom_sheet.dart';
import '../widgets/filter_bottom_sheet.dart';
import '../widgets/reservation_card.dart';
import '../widgets/sort_bottom_sheet.dart';

class ReservationsScreen extends StatelessWidget {
  const ReservationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 44,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SvgImageWidget(svgPath: Assets.searchIcon, size: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: AppColors.secondaryPurple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: AppColors.secondaryPurple),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              IconButton(
                onPressed: () {
                  const CustomBottomSheet(child: SortBottomSheet()).show(context);
                },
                icon: const SvgImageWidget(svgPath: Assets.sortIcon),
                padding: const EdgeInsets.all(10.0),
                constraints: const BoxConstraints(),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: const BorderSide(color: AppColors.secondaryPurple),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              IconButton(
                onPressed: () {
                  const CustomBottomSheet(child: FilterBottomSheet()).show(context);
                },
                icon: const SvgImageWidget(svgPath: Assets.filterIcon),
                padding: const EdgeInsets.all(10.0),
                constraints: const BoxConstraints(),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: const BorderSide(color: AppColors.secondaryPurple),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: const [
              ReservationCard(
                status: 'New',
                unitPrice: '150,000,000',
                commission: '150,000,000',
                dateReserved: '20/3/2024',
                lastAction: '20/3/2024',
              ),
              ReservationCard(
                status: 'Contract Signed',
                unitPrice: '150,000,000',
                commission: '150,000,000',
                dateReserved: '20/3/2024',
                lastAction: '20/3/2024',
              ),
              ReservationCard(
                status: 'No Answer',
                unitPrice: '150,000,000',
                commission: '150,000,000',
                dateReserved: '20/3/2024',
                lastAction: '20/3/2024',
              ),
              ReservationCard(
                status: 'Commission',
                unitPrice: '150,000,000',
                commission: '150,000,000',
                dateReserved: '20/3/2024',
                lastAction: '20/3/2024',
              ),
              ReservationCard(
                status: 'Meeting Scheduled',
                unitPrice: '150,000,000',
                commission: '150,000,000',
                dateReserved: '20/3/2024',
                lastAction: '20/3/2024',
              ),
              ReservationCard(
                status: 'Follow Up',
                unitPrice: '150,000,000',
                commission: '150,000,000',
                dateReserved: '20/3/2024',
                lastAction: '20/3/2024',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
