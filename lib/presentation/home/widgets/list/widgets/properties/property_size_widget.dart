import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module/ui_utils/app_assets.dart';

class PropertySizeWidget extends StatelessWidget {
  final int x;
  final int y;

  const PropertySizeWidget({
    Key? key,
    required this.x,
    required this.y,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.propertySize),
        Text('$x X $y'),
      ],
    );
  }
}
