import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/ui_utils/app_colors.dart';
import 'package:module/ui_utils/app_dimensions.dart';

class NewProjectBtnWidget extends StatelessWidget {
  const NewProjectBtnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.elevatedBtnHeight,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          size: 12,
          color: AppColors.lmIconElevatedBtnColor,
        ),
        label: Text(LocaleKeys.createNewProject.tr().toUpperCase()),
      ),
    );
  }
}
