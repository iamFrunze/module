import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/ui_utils/app_assets.dart';

class PriceBlockWidget extends StatelessWidget {
  final int price;

  const PriceBlockWidget({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$price',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(width: 3),
        SvgPicture.asset(AppAssets.currency),
      ],
    );
  }
}
