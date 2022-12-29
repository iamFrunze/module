import 'package:flutter/material.dart';
import 'package:module/presentation/create_project/create_project_controller.dart';
import 'package:provider/provider.dart';

class ChipsWidget extends StatefulWidget {
  final List<String> listText;

  const ChipsWidget({
    Key? key,
    required this.listText,
  }) : super(key: key);

  @override
  State<ChipsWidget> createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      children: widget.listText
          .map(
            (value) => GestureDetector(
              onTap: () =>
                  context.read<CreateProjectController>().chipRouting(value),
              child: _ChipWidget(
                chipText: value.toUpperCase(),
              ),
            ),
          )
          .toList(),
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
