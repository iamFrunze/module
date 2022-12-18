import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/ui_utils/app_colors.dart';

class CardGridTileWidget extends StatefulWidget {
  final String icon;
  final String description;
  final bool isSelected;
  final void Function()? onTap;

  const CardGridTileWidget({
    Key? key,
    required this.icon,
    required this.description,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CardGridTileWidget> createState() => _CardGridTileWidgetState();
}

class _CardGridTileWidgetState extends State<CardGridTileWidget> {
  var elev = 1.0;
  var strokeWidth = 1.0;

  @override
  Widget build(BuildContext context) {
    bool isSelected = widget.isSelected;
    isSelected ? elev = 20.0  : elev = 1.0;
    isSelected ? strokeWidth = 3.0 : strokeWidth = 1.0;

    return InkWell(
      onTap: widget.onTap,
      child: Card(
        elevation: elev,
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.onSecondary,
              width: strokeWidth,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                widget.icon,
                height: 80,
                color: AppColors.blackColor,
              ),
              Text(
                widget.description.toUpperCase(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
