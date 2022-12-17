import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/create_project/pages/floors/widgets/floor_buttons_widget.dart';
import 'package:module/presentation/create_project/pages/floors/widgets/subtitle_widget.dart';
import 'package:module/presentation/create_project/widgets/title_page_widget.dart';

class FloorsPage extends StatelessWidget {
  const FloorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitlePageWidget(title: LocaleKeys.floorsTitle.tr()),
          const SizedBox(height: 32),
          const SubTitleFloorWidget(),
          const SizedBox(height: 32),
          const Expanded(child: FloorButtonsWidget()),
        ],
      ),
    );
  }
}
