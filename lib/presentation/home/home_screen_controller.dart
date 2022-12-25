import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';
import 'package:module/ui_utils/app_config.dart';
import 'package:module/ui_utils/platform_type.dart';

class HomeScreenController extends ChangeNotifier {
  final _dateFormat = DateFormat('d MMMM yyyy');
  PlatformType platformType = PlatformType.desktop;
  bool isVisibleFilter = false;

  String date = LocaleKeys.allDate.tr();

  void setupDate(DateTimeRange? dateTimeRange) {
    if (dateTimeRange != null) {
      final start = _dateFormat.format(dateTimeRange.start);
      final end = _dateFormat.format(dateTimeRange.end);
      date = '$start - $end';
    } else {
      date = LocaleKeys.allDate.tr();
    }
    notifyListeners();
  }

  void changeVisibilityFilter() {
    isVisibleFilter = !isVisibleFilter;
    notifyListeners();
  }

  PlatformType listenPlatformType(BuildContext context) {
    return AppConfig.checkPlatformType(context);
  }
}
