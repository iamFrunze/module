import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/ui_utils/app_assets.dart';

/// Свойство: солнечная сторона
class PropertyWeatherWidget extends StatelessWidget {
  final bool isSunny;

  const PropertyWeatherWidget({
    Key? key,
    required this.isSunny,
  }) : super(key: key);

  /// TODO(iam) add another icon
  @override
  Widget build(BuildContext context) {
    return isSunny
        ? SvgPicture.asset(AppAssets.propertyWeatherSunny)
        : Container(
            height: 4,
            width: 4,
            color: Colors.blue,
          );
  }
}
