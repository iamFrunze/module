import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';

class SubTitleFloorWidget extends StatelessWidget {
  const SubTitleFloorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        LocaleKeys.floorsSubtitle.tr().toUpperCase()
    );
  }
}