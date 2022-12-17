import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/create_project/widgets/title_page_widget.dart';
import 'package:module/presentation/widgets/card_grid_tile_widget.dart';
import 'package:module/ui_utils/app_assets.dart';

class ConfigurationBuildingPage extends StatelessWidget {
  const ConfigurationBuildingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitlePageWidget(title: LocaleKeys.buildingConfigurationTitle.tr()),
          const SizedBox(height: 32),
          const Expanded(child: _GridViewWidget()),
        ],
      ),
    );
  }
}

class _GridViewWidget extends StatelessWidget {
  const _GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      childAspectRatio: 3,
      children: [
        CardGridTileWidget(
          icon: AppAssets.propertyConfigurationBKB,
          description: LocaleKeys.buildConfigurationParams_bkb.tr(),
        ),
        CardGridTileWidget(
          icon: AppAssets.propertyConfigurationBBB,
          description: LocaleKeys.buildConfigurationParams_bbb.tr(),
        ),
        CardGridTileWidget(
          icon: AppAssets.propertyConfigurationBB,
          description: LocaleKeys.buildConfigurationParams_bb.tr(),
        ),
        CardGridTileWidget(
          icon: AppAssets.propertyConfigurationB,
          description: LocaleKeys.buildConfigurationParams_b.tr(),
        ),
      ],
    );
  }
}
