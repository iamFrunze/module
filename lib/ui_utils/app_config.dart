import 'package:flutter/cupertino.dart';
import 'package:module/ui_utils/app_dimensions/app_dimensions.dart';
import 'package:module/ui_utils/app_dimensions/desktop_app_dimensions.dart';
import 'package:module/ui_utils/app_dimensions/mobile_app_dimensions.dart';
import 'package:module/ui_utils/app_dimensions/tablet_app_dimensions.dart';
import 'package:module/ui_utils/platform_type.dart';

class AppConfig {
  static final kToday = DateTime.now();
  static final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
  static final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

  static PlatformType checkPlatformType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 800) return PlatformType.mobile;
    if (width > 1200) return PlatformType.desktop;
    if (width >= 800 && width <= 1200) return PlatformType.tablet;

    return PlatformType.desktop;
  }

  static AppDimensions appDimensions(BuildContext context) {
    switch (checkPlatformType(context)) {
      case PlatformType.mobile:
        return MobileAppDimensions();
      case PlatformType.tablet:
        return TabletAppDimensions();
      case PlatformType.desktop:
        return DesktopAppDimensions();
    }
  }
}
