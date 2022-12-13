import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module/ui_utils/app_assets.dart';

class PropertyFloorWidget extends StatelessWidget {
  final int countFloor;

  const PropertyFloorWidget({
    Key? key,
    required this.countFloor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.propertyFloor),
        Text('$countFloor'),
      ],
    );
  }
}
