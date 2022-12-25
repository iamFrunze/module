import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/home/home_screen_controller.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/filter_bottom_sheet_widget.dart';
import 'package:module/ui_utils/app_assets.dart';
import 'package:module/ui_utils/app_config.dart';
import 'package:module/ui_utils/app_dimensions/app_dimensions.dart';
import 'package:module/ui_utils/platform_type.dart';
import 'package:provider/provider.dart';

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
            (states) => theme.colorScheme.secondaryContainer,
          ),
        ),
        onPressed: () {
          context.read<HomeScreenController>().changeVisibilityFilter();
          if (AppConfig.checkPlatformType(context) != PlatformType.desktop) {
            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 40,
              ),
              isScrollControlled: true,
              isDismissible: false,
              context: context,
              builder: (context) {
                return Wrap(
                  children: const [
                    FilterBottomSheet(),
                  ],
                );
              },
            );
          }
        },
        icon: SvgPicture.asset(AppAssets.filter),
        label: Text(
          LocaleKeys.filter.tr().toUpperCase(),
          style: TextStyle(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
      ),
    );
  }
}
