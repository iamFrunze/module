import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/filter_dropdown_widget.dart';

class FilterPurposeBuildingWidget extends StatelessWidget {
  const FilterPurposeBuildingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilterDropdownWidget(
      leftWidget: LocaleKeys.purposeBuilding.tr(),
      rightWidget: LocaleKeys.purposeBuildingClasses_ITRHostel.tr(),
      isTextLeftWidget: true,
    );
  }
}
