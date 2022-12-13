import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/create_project/pages/people_planning/people_planning_page.dart';
import 'package:module/presentation/create_project/widgets/chips_widget.dart';
import 'package:module/presentation/create_project/widgets/progess_indicator_widget.dart';
import 'package:module/ui_utils/app_dimensions.dart';

class CreateProjectScreen extends StatelessWidget {
  const CreateProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
            ProgressIndicatorWidget(
              screenWidth: screenSize.width,
              part: 1,
            ),
            const SizedBox(height: 32),
            const Align(
              alignment: Alignment.centerLeft,
              child: ChipsWidget(
                listText: ['123'],
              ),
            ),
            const SizedBox(height: 32),
            const PeoplePlanningPage(),
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
        onPressed: () {},
        child: Text(
          LocaleKeys.next.tr().toUpperCase(),
        ),
      ),
    );
  }
}
