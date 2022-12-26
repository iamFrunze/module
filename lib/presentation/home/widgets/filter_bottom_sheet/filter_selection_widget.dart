import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterSelectionWidget extends StatefulWidget {
  final String leftWidget;
  final List<String> rightSelectionWidgets;
  final bool isTextRightWidget;
  final Function(int index) onTap;
  final String selectedItem;

  const FilterSelectionWidget({
    Key? key,
    required this.leftWidget,
    required this.rightSelectionWidgets,
    required this.isTextRightWidget,
    required this.onTap,
    required this.selectedItem,
  }) : super(key: key);

  @override
  State<FilterSelectionWidget> createState() => _FilterSelectionWidgetState();
}

class _FilterSelectionWidgetState extends State<FilterSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final selectedContainerColor = theme.colorScheme.secondary;
    const unSelectedContainerColor = Colors.white;
    const selectedItemColor = Colors.white;
    final unSelectedItemColor = theme.colorScheme.secondary;

    final containerListWidgets = widget.rightSelectionWidgets.map(
      (e) {
        final index = widget.rightSelectionWidgets.indexOf(e);

        return widget.isTextRightWidget
            ? InkWell(
                onTap: () => widget.onTap(index),
                child: Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: e != widget.selectedItem
                          ? theme.colorScheme.secondaryContainer
                          : Colors.white,
                    ),
                    color: e == widget.selectedItem
                        ? selectedContainerColor
                        : unSelectedContainerColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Text(
                    e,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: e == widget.selectedItem
                              ? selectedItemColor
                              : unSelectedItemColor,
                        ),
                  ),
                ),
              )
            : InkWell(
                onTap: () => widget.onTap(index),
                child: Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: e != widget.selectedItem
                          ? theme.colorScheme.secondaryContainer
                          : Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    color: e == widget.selectedItem
                        ? selectedContainerColor
                        : unSelectedContainerColor,
                  ),
                  child: SvgPicture.asset(
                    e,
                    height: 24,
                    color: e == widget.selectedItem
                        ? selectedItemColor
                        : unSelectedItemColor,
                  ),
                ),
              );
      },
    ).toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.leftWidget.toUpperCase(),
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Row(
          children: containerListWidgets,
        ),
      ],
    );
  }
}
