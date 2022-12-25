import 'package:flutter/material.dart';
import 'package:module/ui_utils/app_colors.dart';
import 'package:module/ui_utils/app_typography.dart';

class FloorSelectionWidget extends StatefulWidget {
  final String text;
  final bool isSelected;
  final Function()? onTap;

  const FloorSelectionWidget({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  State<FloorSelectionWidget> createState() => _FloorSelectionWidgetState();
}

class _FloorSelectionWidgetState extends State<FloorSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          color: widget.isSelected ? AppColors.blackColor : Colors.white,
          border: Border.all(color: AppColors.blackColor),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: Center(
          child: Text(widget.text,
              style: widget.isSelected
                  ? AppTypography.floorSelectedTextStyle
                  : AppTypography.floorUnselectedTextStyle),
        ),
      ),
    );
  }
}
