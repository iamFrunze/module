import 'package:flutter/material.dart';
import 'package:module/presentation/home/widgets/list/block_widget.dart';
import 'package:module/ui_utils/mock_data.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final mockList = MockData.mockBlockList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => BlockWidget(mock: mockList[index]),
        childCount: mockList.length,
      ),
      // children: [
      //   ListView.builder(
      //     physics: const ScrollPhysics(),
      //     itemCount: mockList.length,
      //     shrinkWrap: true,
      //     itemBuilder: (BuildContext context, int index) {
      //       return BlockWidget(mock: mockList[index]);
      //     },
      //   ),
      // ],
    );
  }
}
