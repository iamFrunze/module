import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module/ui_utils/app_assets.dart';

class PropertyHeightWidget extends StatelessWidget {
  final double height;

  const PropertyHeightWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.propertyHeight),
        Text('$height'),
      ],
    );
  }
}
