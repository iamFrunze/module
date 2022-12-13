import 'package:easy_localization/easy_localization.dart';
import 'package:module/l10n/locale_keys.g.dart';

class AppStrings {
  static final sortList = <String>[
    LocaleKeys.sort_firstNew.tr().toUpperCase(),
    LocaleKeys.sort_firstOld.tr().toUpperCase()
  ];
}
