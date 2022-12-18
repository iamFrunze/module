import 'package:flutter/material.dart';

class ChipsWidget extends StatelessWidget {
  final List<String> listText;

  const ChipsWidget({
    Key? key,
    required this.listText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 4,
        alignment: WrapAlignment.start,
        children: listText
            .map(
              (e) => _ChipWidget(
                key: UniqueKey(),
                chipText: e.toUpperCase(),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _ChipWidget extends StatelessWidget {
  final String chipText;

  const _ChipWidget({
    Key? key,
    required this.chipText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Theme.of(context).primaryColor,
      label: Text(chipText.toUpperCase()),
    );
  }
}
