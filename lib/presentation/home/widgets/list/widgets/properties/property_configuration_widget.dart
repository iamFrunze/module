import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module/data/mock/home_block_mock.dart';
import 'package:module/ui_utils/app_assets.dart';

/// Свойство: конфигурация здания
class PropertyConfigurationWidget extends StatelessWidget {
  final BuilderConfiguration builderConfiguration;

  const PropertyConfigurationWidget({
    Key? key,
    required this.builderConfiguration,
  }) : super(key: key);

  /// TODO(iam): add another icon
  @override
  Widget build(BuildContext context) {
    switch (builderConfiguration) {
      case BuilderConfiguration.BKB:
        return SvgPicture.asset(AppAssets.propertyConfigurationBKB);
      case BuilderConfiguration.BBB:
        return Container();
      case BuilderConfiguration.BB:
        return Container();
      case BuilderConfiguration.B:
        return Container();
    }
  }
}