import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/ui_utils/app_colors.dart';
import 'package:module/ui_utils/app_dimensions/app_dimensions.dart';
import 'package:module/utils/routes/routes.dart';

class NewProjectBtnWidget extends StatelessWidget {
  const NewProjectBtnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.elevatedBtnHeight,
      child: ElevatedButton.icon(
        onPressed: () => context.go(Routes.toCreateProjectScreen),
        icon: const Icon(
          Icons.add,
          size: 24,
          color: AppColors.lmIconElevatedBtnColor,
        ),
        label: FittedBox(
          child: Text(LocaleKeys.createNewProject.tr().toUpperCase()),
        ),
      ),
    );
  }
}
