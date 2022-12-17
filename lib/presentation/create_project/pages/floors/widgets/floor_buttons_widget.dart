import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/create_project/pages/floors/widgets/floor_selection_widget.dart';

class FloorButtonsWidget extends StatelessWidget {
  const FloorButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloorSelectionWidget(
          text: LocaleKeys.numberFloor.plural(1).toUpperCase(),
          isSelected: false,
        ),
        FloorSelectionWidget(
          text: LocaleKeys.numberFloor.plural(2).toUpperCase(),
          isSelected: true,
        ),
        FloorSelectionWidget(
          text: LocaleKeys.numberFloor.plural(3).toUpperCase(),
          isSelected: false,
        ),
      ],
    );
  }
}
