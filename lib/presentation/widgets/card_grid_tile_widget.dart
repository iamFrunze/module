import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/ui_utils/app_colors.dart';

class CardGridTileWidget extends StatefulWidget {
  final String icon;
  final String description;

  const CardGridTileWidget({
    Key? key,
    required this.icon,
    required this.description,
  }) : super(key: key);

  @override
  State<CardGridTileWidget> createState() => _CardGridTileWidgetState();
}

class _CardGridTileWidgetState extends State<CardGridTileWidget> {
  var elev = 1.0;
  var strokeWidth = 1.0;
  bool onChoose = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          onChoose ? elev = 1.0 : elev = 20.0;
          onChoose ? strokeWidth = 1.0 : strokeWidth = 3.0;
          onChoose = !onChoose;
        });
      },
      child: Card(
        elevation: elev,
        child: Container(
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
              Text(widget.description.toUpperCase()),
            ],
          ),
        ),
      ),
    );
  }
}
