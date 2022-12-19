import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/ui_utils/app_dimensions.dart';

class FilterBottomButtonsWidget extends StatelessWidget {
  const FilterBottomButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: AppDimensions.elevatedBtnHeight,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(LocaleKeys.showProjects.plural(3).toUpperCase()),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: SizedBox(
            height: AppDimensions.elevatedBtnHeight,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => Theme.of(context).colorScheme.secondaryContainer,
                ),
              ),
              child: Text(
                LocaleKeys.resetFilter.tr().toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
