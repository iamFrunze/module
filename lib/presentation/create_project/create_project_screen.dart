import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/create_project/create_project_controller.dart';
import 'package:module/presentation/create_project/pages/area/area_page.dart';
import 'package:module/presentation/create_project/pages/configuration_building/configuration_building_page.dart';
import 'package:module/presentation/create_project/pages/floors/floors_page.dart';
import 'package:module/presentation/create_project/pages/people_planning/people_planning_page.dart';
import 'package:module/presentation/create_project/pages/purpose_building/purpose_building_page.dart';
import 'package:module/presentation/create_project/widgets/chips_widget.dart';
import 'package:module/presentation/create_project/widgets/progess_indicator_widget.dart';
import 'package:module/ui_utils/app_dimensions.dart';
import 'package:module/utils/routes/routes.dart';
import 'package:provider/provider.dart';

final logger = Logger(level: Level.debug);

class CreateProjectScreen extends StatefulWidget {
  const CreateProjectScreen({Key? key}) : super(key: key);

  @override
  State<CreateProjectScreen> createState() => _CreateProjectScreenState();
}

class _CreateProjectScreenState extends State<CreateProjectScreen> {
  final pages = [
    const PurposeBuildingPage(key: ValueKey(0)),
    const PeoplePlanningPage(key: ValueKey(1)),
    const AreaPage(key: ValueKey(2)),
    const ConfigurationBuildingPage(key: ValueKey(3)),
    const FloorsPage(key: ValueKey(4)),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final currentPageIndex =
        context.watch<CreateProjectController>().currentPage.index;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 24,
          top: kToolbarHeight,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  context.go(Routes.toHome);
                  context.read<CreateProjectController>().onClose();
                },
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ),
            const SizedBox(height: 32),
            ProgressIndicatorWidget(
              screenWidth: screenSize.width,
              part: currentPageIndex,
            ),
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.centerLeft,
              child: ChipsWidget(
                listText: context.watch<CreateProjectController>().chips,
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                transitionBuilder: (child, animation) {
                  final inAnimation = Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: const Offset(0.0, 0.0),
                  ).animate(animation);
                  final outAnimation = Tween<Offset>(
                    begin: const Offset(-1.0, 0.0),
                    end: const Offset(0.0, 0.0),
                  ).animate(animation);

                  if (child.key == ValueKey(currentPageIndex)) {
                    return SlideTransition(
                      position: inAnimation,
                      child: child,
                    );
                  } else {
                    return SlideTransition(
                      position: outAnimation,
                      child: child,
                    );
                  }
                },
                child: pages[currentPageIndex],
              ),
            ),
            const _NextBtnWidget(),
          ],
        ),
      ),
    );
  }
}

class _NextBtnWidget extends StatefulWidget {
  const _NextBtnWidget({Key? key}) : super(key: key);

  @override
  State<_NextBtnWidget> createState() => _NextBtnWidgetState();
}

class _NextBtnWidgetState extends State<_NextBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.elevatedBtnHeight,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: context.watch<CreateProjectController>().canNextPage
            ? () => context.read<CreateProjectController>().nextPage()
            : null,
        child: Text(
          LocaleKeys.next.tr().toUpperCase(),
        ),
      ),
    );
  }
}
