import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/data/ui/block_model.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/create_project/create_project_controller.dart';
import 'package:module/presentation/create_project/widgets/title_page_widget.dart';
import 'package:module/presentation/widgets/card_grid_tile_widget.dart';
import 'package:module/ui_utils/app_assets.dart';
import 'package:module/ui_utils/app_config.dart';
import 'package:module/ui_utils/platform_type.dart';
import 'package:provider/provider.dart';

class ConfigurationBuildingPage extends StatelessWidget {
  const ConfigurationBuildingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitlePageWidget(title: LocaleKeys.buildingConfigurationTitle.tr()),
        const SizedBox(height: 32),
        const _GridViewWidget(),
      ],
    );
  }
}

class _GridViewWidget extends StatefulWidget {
  const _GridViewWidget({Key? key}) : super(key: key);

  @override
  State<_GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<_GridViewWidget> {
  BlockModel selectedItem = const BlockModel(icon: '', desc: '');

  @override
  Widget build(BuildContext context) {
    final provider = context.read<CreateProjectController>();
    final selectedItem =
        context.watch<CreateProjectController>().selectedConfigurationBuilding;

    final list = [
      BlockModel(
        icon: AppAssets.propertyConfigurationBKB,
        desc: LocaleKeys.buildConfigurationParams_bkb.tr(),
      ),
      BlockModel(
        icon: AppAssets.propertyConfigurationBBB,
        desc: LocaleKeys.buildConfigurationParams_bbb.tr(),
      ),
      BlockModel(
        icon: AppAssets.propertyConfigurationBB,
        desc: LocaleKeys.buildConfigurationParams_bb.tr(),
      ),
      BlockModel(
        icon: AppAssets.propertyConfigurationB,
        desc: LocaleKeys.buildConfigurationParams_b.tr(),
      ),
    ]
        .map(
          (value) => CardGridTileWidget(
            icon: value.icon,
            description: value.desc,
            isSelected: selectedItem == value.desc,
            onTap: () => provider.selectedConfigurationBuilding = value.desc,
          ),
        )
        .toList();

    return LayoutBuilder(
      builder: (context, viewPort) {
        return AppConfig.checkPlatformType(context) != PlatformType.mobile
            ? Center(child: Wrap(spacing: 4, runSpacing: 4, children: list))
            : ListView.separated(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) => list[index],
                separatorBuilder: (_, __) => const SizedBox(height: 4),
                itemCount: list.length,
              );
      },
    );
  }
}
