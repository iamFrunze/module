import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterDropdownWidget extends StatelessWidget {
  final String leftWidget;
  final bool isTextLeftWidget;
  final String rightWidget;

  const FilterDropdownWidget({
    Key? key,
    required this.leftWidget,
    required this.rightWidget,
    this.isTextLeftWidget = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final containerLeftWidget = isTextLeftWidget
        ? Text(
            leftWidget.toUpperCase(),
            style: Theme.of(context).textTheme.labelMedium,
          )
        : SvgPicture.asset(leftWidget);

    return Row(
      children: [
        containerLeftWidget,
        const SizedBox(width: 24),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              color: Theme.of(context).primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    rightWidget.toUpperCase(),
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
