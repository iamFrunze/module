import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterSelectionWidget extends StatelessWidget {
  final String leftWidget;
  final List<String> rightSelectionWidgets;
  final bool isTextRightWidget;

  const FilterSelectionWidget({
    Key? key,
    required this.leftWidget,
    required this.rightSelectionWidgets,
    required this.isTextRightWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final containerListWidgets = rightSelectionWidgets
        .map(
          (e) => isTextRightWidget
              ? Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Text(
                    e,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                )
              : Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: SvgPicture.asset(
                    e,
                    height: 48,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
        )
        .toList();

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftWidget.toUpperCase(),
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Row(
            children: containerListWidgets,
          )
        ],
      ),
    );
  }
}
