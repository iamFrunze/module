import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/home/home_screen_controller.dart';
import 'package:module/ui_utils/platform_type.dart';
import 'package:provider/provider.dart';

class FilterTitle extends StatelessWidget {
  const FilterTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          LocaleKeys.filter.tr().toUpperCase(),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          child: IconButton(
            onPressed: () {
              context.read<HomeScreenController>().changeVisibilityFilter();
              if (context
                      .read<HomeScreenController>()
                      .listenPlatformType(context) ==
                  PlatformType.mobile) {
                Navigator.pop(context);
              }
            },
            icon: const Icon(Icons.close),
          ),
        ),
      ],
    );
  }
}
