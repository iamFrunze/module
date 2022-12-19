import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/filter_selection_widget.dart';

class FilterAreaBlockWidget extends StatelessWidget {
  const FilterAreaBlockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leftWidget = LocaleKeys.areaBlock.tr();
    final rightWidgets = ['6 X 3', '6 X 3'];

    return FilterSelectionWidget(
      leftWidget: leftWidget,
      rightSelectionWidgets: rightWidgets,
      isTextRightWidget: true,
    );
  }
}
