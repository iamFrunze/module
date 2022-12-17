import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/create_project/widgets/title_page_widget.dart';
import 'package:module/presentation/widgets/card_grid_tile_widget.dart';
import 'package:module/ui_utils/app_assets.dart';

class PurposeBuildingPage extends StatelessWidget {
  const PurposeBuildingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitlePageWidget(
            title: LocaleKeys.purposeBuildingTitle.tr().toUpperCase(),
          ),
          const Expanded(
            child: _GridPurposeWidget(),
          ),
        ],
      ),
    );
  }
}

class _GridPurposeWidget extends StatelessWidget {
  const _GridPurposeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      crossAxisCount: 2,
      childAspectRatio: 3,
      children: [
        CardGridTileWidget(
          icon: AppAssets.propertyPeople,
          description:
              LocaleKeys.purposeBuildingClasses_dormitoryForWorkers.tr(),
        ),
        CardGridTileWidget(
          icon: AppAssets.propertyPeople,
          description:
              LocaleKeys.purposeBuildingClasses_bathAndLaundryComplex.tr(),
        ),
        CardGridTileWidget(
          icon: AppAssets.propertyPeople,
          description:
              LocaleKeys.purposeBuildingClasses_officeHeadquarters.tr(),
        ),
        CardGridTileWidget(
          icon: AppAssets.propertyPeople,
          description: LocaleKeys.purposeBuildingClasses_ITRHostel.tr(),
        ),
        CardGridTileWidget(
          icon: AppAssets.propertyPeople,
          description: LocaleKeys.purposeBuildingClasses_canteen.tr(),
        ),
        CardGridTileWidget(
          icon: AppAssets.propertyPeople,
          description: LocaleKeys.purposeBuildingClasses_abk.tr(),
        ),
        CardGridTileWidget(
          icon: AppAssets.propertyPeople,
          description: LocaleKeys.purposeBuildingClasses_other_class.tr(),
        ),
      ],
    );
  }
}
