import 'package:flutter/cupertino.dart';
import 'package:module/ui_utils/app_config.dart';
import 'package:module/ui_utils/platform_type.dart';

class HomeScreenController extends ChangeNotifier {
  PlatformType platformType = PlatformType.desktop;
  bool isVisibleFilter = false;

  void changeVisibilityFilter() {
    isVisibleFilter = !isVisibleFilter;
    notifyListeners();
  }

  PlatformType listenPlatformType(BuildContext context) {
    return AppConfig.checkPlatformType(context);
  }
}
