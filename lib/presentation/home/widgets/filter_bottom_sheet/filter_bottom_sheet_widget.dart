import 'package:flutter/material.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/widgets/filter_area_block_widget.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/widgets/filter_bottom_buttons_widget.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/widgets/filter_calendar_widget.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/widgets/filter_ceiling_height_widget.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/widgets/filter_configuration_building_widget.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/widgets/filter_managers_widget.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/widgets/filter_number_storeys_widget.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/widgets/filter_purpose_building_widget.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/widgets/filter_title_widget.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          FilterTitle(),
          SizedBox(height: 24),
          FilterCalendarWidget(),
          SizedBox(height: 12),
          FilterManagerWidget(),
          SizedBox(height: 12),
          FilterPurposeBuildingWidget(),
          SizedBox(height: 12),
          FilterConfigurationBuildingWidget(),
          SizedBox(height: 12),
          FilterAreaBlockWidget(),
          SizedBox(height: 12),
          FilterNumberStoreysWidget(),
          SizedBox(height: 12),
          FilterCeilingHeightWidget(),
          SizedBox(height: 12),
          FilterBottomButtonsWidget(),
        ],
      ),
    );
  }
}
