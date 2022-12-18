import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  final int part;
  final double screenWidth;

  const ProgressIndicatorWidget({
    Key? key,
    required this.part,
    required this.screenWidth,
  }) : super(key: key);

  @override
  State<ProgressIndicatorWidget> createState() =>
      _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    final indexPage = widget.part + 1;

    return Stack(
      children: [
        Container(
          height: 8,
          width: widget.screenWidth,
          color: Theme.of(context).colorScheme.primary,
        ),
        Container(
          height: 8,
          width: widget.screenWidth * (indexPage / 5) -
              (widget.screenWidth * (1 / 6)),
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ],
    );
  }
}
