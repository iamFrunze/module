
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/ui_utils/app_assets.dart';
import 'package:module/ui_utils/app_dimensions.dart';

class FilterBtnWidget extends StatelessWidget {
  const FilterBtnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: AppDimensions.elevatedBtnHeight,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => theme.primaryColor,
          ),
        ),
        onPressed: () {},
        icon: SvgPicture.asset(AppAssets.filter),
        label: Text(
          LocaleKeys.filter.tr().toUpperCase(),
          style: TextStyle(
            color: theme.colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}
