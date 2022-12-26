import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/home/home_screen_controller.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/filter_selection_widget.dart';
import 'package:provider/provider.dart';

class FilterNumberStoreysWidget extends StatelessWidget {
  const FilterNumberStoreysWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leftWidget = LocaleKeys.numberStoreys.tr();
    final rightListWidgets = [
      LocaleKeys.numberFloor.plural(1),
      LocaleKeys.numberFloor.plural(2),
      LocaleKeys.numberFloor.plural(3),
    ];

    return FilterSelectionWidget(
      leftWidget: leftWidget,
      rightSelectionWidgets: rightListWidgets,
      isTextRightWidget: true,
      onTap: (index) {
        context
            .read<HomeScreenController>()
            .setupFloors(rightListWidgets[index]);
      },
      selectedItem: context.watch<HomeScreenController>().floors,
    );
  }
}
