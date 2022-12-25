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

class PurposeBuildingPage extends StatelessWidget {
  const PurposeBuildingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitlePageWidget(
          title: LocaleKeys.purposeBuildingTitle.tr().toUpperCase(),
        ),
        const SizedBox(height: 32),
        const _GridPurposeWidget(),
      ],
    );
  }
}

class _GridPurposeWidget extends StatefulWidget {
  const _GridPurposeWidget({Key? key}) : super(key: key);

  @override
  State<_GridPurposeWidget> createState() => _GridPurposeWidgetState();
}

class _GridPurposeWidgetState extends State<_GridPurposeWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = context.read<CreateProjectController>();
    final selectedItem =
        context.watch<CreateProjectController>().selectedPurposeBuilding;
    final list = [
      BlockModel(
        icon: AppAssets.propertyPeople,
        desc: LocaleKeys.purposeBuildingClasses_dormitoryForWorkers.tr(),
      ),
      BlockModel(
        icon: AppAssets.propertyPeople,
        desc: LocaleKeys.purposeBuildingClasses_bathAndLaundryComplex.tr(),
      ),
      BlockModel(
        icon: AppAssets.propertyPeople,
        desc: LocaleKeys.purposeBuildingClasses_officeHeadquarters.tr(),
      ),
      BlockModel(
        icon: AppAssets.propertyPeople,
        desc: LocaleKeys.purposeBuildingClasses_ITRHostel.tr(),
      ),
      BlockModel(
        icon: AppAssets.propertyPeople,
        desc: LocaleKeys.purposeBuildingClasses_canteen.tr(),
      ),
      BlockModel(
        icon: AppAssets.propertyPeople,
        desc: LocaleKeys.purposeBuildingClasses_abk.tr(),
      ),
      BlockModel(
        icon: AppAssets.propertyPeople,
        desc: LocaleKeys.purposeBuildingClasses_other_class.tr(),
      ),
    ]
        .map(
          (value) => CardGridTileWidget(
            key: UniqueKey(),
            icon: value.icon,
            description: value.desc,
            isSelected: selectedItem == value.desc,
            onTap: () => provider.setupSelectedPurposeBuilding = value.desc,
          ),
        )
        .toList();

    return LayoutBuilder(
      builder: (context, viewPort) {
        if (AppConfig.checkPlatformType(context) != PlatformType.mobile) {
          return Center(
            child: Wrap(
              spacing: 4,
              runSpacing: 4,
              children: list,
            ),
          );
        } else {
          return ListView.separated(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) => list[index],
            separatorBuilder: (_, __) => const SizedBox(height: 4),
            itemCount: list.length,
          );
        }
      },
    );
  }
}
