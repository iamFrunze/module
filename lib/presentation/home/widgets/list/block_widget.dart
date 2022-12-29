import 'package:flutter/material.dart';
import 'package:module/data/mock/home_block_mock.dart';
import 'package:module/presentation/home/widgets/list/widgets/price_block_widget.dart';
import 'package:module/presentation/home/widgets/list/widgets/properties_block_widget.dart';
import 'package:module/presentation/home/widgets/list/widgets/subtitle_block_widget.dart';
import 'package:module/presentation/home/widgets/list/widgets/title_block_widget.dart';

class BlockWidget extends StatelessWidget {
  final HomeBlockMock mock;

  const BlockWidget({
    Key? key,
    required this.mock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleBlockWidget(title: mock.title),
          const SizedBox(height: 12),
          SubtitleBlockWidget(
            numberContract: mock.numberContract,
            numberCrm: mock.numberCrm,
            date: mock.date,
            personName: mock.personName,
          ),
          const SizedBox(height: 12),
          PropertiesBlockWidget(
            propertiesMock: mock.homeBlockPropertiesMock,
          ),
          const SizedBox(height: 12),
          PriceBlockWidget(price: mock.price),
        ],
      ),
    );
  }
}
