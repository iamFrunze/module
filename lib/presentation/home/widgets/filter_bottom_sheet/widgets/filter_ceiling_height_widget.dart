import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/home/home_screen_controller.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/filter_selection_widget.dart';
import 'package:provider/provider.dart';

class FilterCeilingHeightWidget extends StatelessWidget {
  const FilterCeilingHeightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leftWidget = LocaleKeys.ceilingHeightClear.tr();
    final rightListWidgets = [
      '2,3',
      '2,5',
      '2,7',
      '2,9',
    ];

    return FilterSelectionWidget(
      leftWidget: leftWidget,
      rightSelectionWidgets: rightListWidgets,
      isTextRightWidget: true,
      onTap: (index) {
        context
            .read<HomeScreenController>()
            .setupCeilingHeight(rightListWidgets[index]);
      },
      selectedItem: context.watch<HomeScreenController>().ceilingHeight,
    );
  }
}
