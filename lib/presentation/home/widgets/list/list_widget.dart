import 'package:flutter/material.dart';
import 'package:module/presentation/home/widgets/list/block_widget.dart';
import 'package:module/ui_utils/mock_data.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final mockList =
      MockData.mockBlockList.map((e) => BlockWidget(mock: e)).toList();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      runAlignment: WrapAlignment.center,
      spacing: 4,
      runSpacing: 4,
      children: mockList,
    );
  }
}
