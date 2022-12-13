import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/ui_utils/app_assets.dart';

class PropertyPeopleWidget extends StatelessWidget {
  final int countPeople;

  const PropertyPeopleWidget({
    Key? key,
    required this.countPeople,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.propertyPeople),
        Text('$countPeople'),
      ],
    );
  }
}
