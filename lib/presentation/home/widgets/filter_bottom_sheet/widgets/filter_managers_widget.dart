import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/filter_dropdown_widget.dart';
import 'package:module/ui_utils/app_assets.dart';
import 'package:module/ui_utils/mock_data.dart';

class FilterManagerWidget extends StatelessWidget {
  const FilterManagerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilterDropdownWidget(
      leftWidget: AppAssets.manager,
      rightWidget: LocaleKeys.allManagers.tr(),
      dropDownItems: MockData.mockMangers.map((e) => e.toUpperCase()).toList(),
    );
  }
}
