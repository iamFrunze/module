import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/filter_selection_widget.dart';
import 'package:module/ui_utils/app_assets.dart';

class FilterConfigurationBuildingWidget extends StatelessWidget {
  const FilterConfigurationBuildingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leftWidget = LocaleKeys.configurationBuilding.tr();
    final rightWidgets = [
      AppAssets.propertyConfigurationBKB,
      AppAssets.propertyConfigurationBBB,
      AppAssets.propertyConfigurationBB,
      AppAssets.propertyConfigurationB,
    ];

    return FilterSelectionWidget(
      leftWidget: leftWidget,
      rightSelectionWidgets: rightWidgets,
      isTextRightWidget: false,
    );
  }
}
