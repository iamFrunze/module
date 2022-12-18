import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/create_project/create_project_controller.dart';
import 'package:module/presentation/create_project/pages/floors/widgets/floor_selection_widget.dart';
import 'package:provider/provider.dart';

class FloorButtonsWidget extends StatelessWidget {
  const FloorButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.read<CreateProjectController>();
    final selectedItem = context.watch<CreateProjectController>().selectedFloor;
    final floors = [
      LocaleKeys.numberFloor.plural(1).toUpperCase(),
      LocaleKeys.numberFloor.plural(2).toUpperCase(),
      LocaleKeys.numberFloor.plural(3).toUpperCase(),
    ]
        .map(
          (value) => FloorSelectionWidget(
            text: value,
            isSelected: value == selectedItem,
            onTap: () => provider.setupFloor = value,
          ),
        )
        .toList();

    return SingleChildScrollView(
      child: Wrap(
        direction: Axis.vertical,
        spacing: 4,
        children: floors,
      ),
    );
  }
}
