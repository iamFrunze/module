import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/filter_dropdown_widget.dart';
import 'package:module/ui_utils/app_assets.dart';

class FilterCalendarWidget extends StatelessWidget {
  const FilterCalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilterDropdownWidget(
      leftWidget: AppAssets.calendar,
      rightWidget: LocaleKeys.allDate.tr(),
    );
  }
}
