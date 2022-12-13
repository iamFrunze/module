import 'package:flutter/material.dart';
import 'package:module/presentation/home/widgets/top_buttons/filter_btn_widget.dart';
import 'package:module/presentation/home/widgets/top_buttons/new_project_btn_widget.dart';

class TopButtonsWidget extends StatelessWidget {
  const TopButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(flex: 2, child: NewProjectBtnWidget()),
        SizedBox(width: 16),
        FilterBtnWidget()
      ],
    );
  }
}
