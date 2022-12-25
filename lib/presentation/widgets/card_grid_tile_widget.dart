import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/ui_utils/app_colors.dart';
import 'package:module/ui_utils/app_config.dart';

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
    isSelected ? elev = 20.0 : elev = 1.0;
    isSelected ? strokeWidth = 3.0 : strokeWidth = 1.0;

    return Card(
      elevation: elev,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.onSecondary,
              width: strokeWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                widget.icon,
                width: AppConfig.appDimensions(context).iconSize,
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
