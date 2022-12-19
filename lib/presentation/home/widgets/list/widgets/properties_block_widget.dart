import 'package:flutter/material.dart';
import 'package:module/data/mock/home_block_mock.dart';
import 'package:module/presentation/home/widgets/list/widgets/properties/property_configuration_widget.dart';
import 'package:module/presentation/home/widgets/list/widgets/properties/property_floor_widget.dart';
import 'package:module/presentation/home/widgets/list/widgets/properties/property_height_widget.dart';
import 'package:module/presentation/home/widgets/list/widgets/properties/property_people_widget.dart';
import 'package:module/presentation/home/widgets/list/widgets/properties/property_size_widget.dart';
import 'package:module/presentation/home/widgets/list/widgets/properties/property_weather_widget.dart';

class PropertiesBlockWidget extends StatelessWidget {
  final HomeBlockPropertiesMock propertiesMock;

  const PropertiesBlockWidget({
    Key? key,
    required this.propertiesMock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,

      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        PropertyWeatherWidget(isSunny: propertiesMock.isSunny),
        const SizedBox(width: 12),
        PropertyConfigurationWidget(
          builderConfiguration: propertiesMock.builderConfiguration,
        ),
        const SizedBox(width: 12),
        PropertyPeopleWidget(countPeople: propertiesMock.countPeople),
        const SizedBox(width: 12),
        PropertyFloorWidget(countFloor: propertiesMock.countFloor),
        const SizedBox(width: 12),
        PropertySizeWidget(x: propertiesMock.xArea, y: propertiesMock.yArea),
        const SizedBox(width: 12),
        PropertyHeightWidget(height: propertiesMock.height),
      ],
    );
  }
}
