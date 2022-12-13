import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/ui_utils/app_assets.dart';

class PurposeBuildingPage extends StatelessWidget {
  const PurposeBuildingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          _TitleWidget(),
          Expanded(
            child: _GridPurposeWidget(),
          ),
        ],
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.purposeBuildingTitle.tr().toUpperCase(),
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        letterSpacing: 0.1,
        fontWeight: FontWeight.w400,
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
      childAspectRatio: 1.5,
      children: [
        _GridTile(
          nameBuilding:
              LocaleKeys.purposeBuildingClasses_dormitoryForWorkers.tr(),
        ),
        _GridTile(
          nameBuilding:
              LocaleKeys.purposeBuildingClasses_bathAndLaundryComplex.tr(),
        ),
        _GridTile(
          nameBuilding:
              LocaleKeys.purposeBuildingClasses_officeHeadquarters.tr(),
        ),
        _GridTile(
          nameBuilding: LocaleKeys.purposeBuildingClasses_ITRHostel.tr(),
        ),
        _GridTile(
          nameBuilding: LocaleKeys.purposeBuildingClasses_canteen.tr(),
        ),
        _GridTile(
          nameBuilding: LocaleKeys.purposeBuildingClasses_abk.tr(),
        ),
        _GridTile(
          nameBuilding: LocaleKeys.purposeBuildingClasses_other_class.tr(),
        ),
      ],
    );
  }
}

class _GridTile extends StatefulWidget {
  final String nameBuilding;

  const _GridTile({
    Key? key,
    required this.nameBuilding,
  }) : super(key: key);

  @override
  State<_GridTile> createState() => _GridTileState();
}

class _GridTileState extends State<_GridTile> {
  var elev = 1.0;
  var strokeWidth = 1.0;
  bool onChoose = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          onChoose ? elev = 1.0 : elev = 20.0;
          onChoose ? strokeWidth = 1.0 : strokeWidth = 3.0;
          onChoose = !onChoose;
        });
      },
      child: Card(
        elevation: elev,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.onSecondary,
              width: strokeWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(AppAssets.building),
              Text(
                widget.nameBuilding.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
