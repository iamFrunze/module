import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/presentation/create_project/widgets/text_form_field_widget.dart';
import 'package:module/presentation/create_project/widgets/title_page_widget.dart';

class PeoplePlanningPage extends StatelessWidget {
  const PeoplePlanningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitlePageWidget(title: LocaleKeys.peoplePlanningTitle.tr()),
          const SizedBox(height: 32),
          TextFormFieldWidget(labelText: LocaleKeys.numberPersons.tr()),
        ],
      ),
    );
  }
}
