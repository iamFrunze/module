import 'package:flutter/material.dart';
import 'package:module/presentation/home/widgets/top_buttons/filter_btn_widget.dart';
import 'package:module/presentation/home/widgets/top_buttons/new_project_btn_widget.dart';
import 'package:module/presentation/widgets/sliver_appbar_delegate.dart';
import 'package:module/ui_utils/app_dimensions.dart';

/// Кнопки: создать новый проект и фильтр
class TopButtonsWidget extends StatelessWidget {
  const TopButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        minHeight: AppDimensions.elevatedBtnHeight,
        maxHeight: AppDimensions.elevatedBtnHeight,
        child: Row(
          children: const [
            Expanded(flex: 3, child: NewProjectBtnWidget()),
            SizedBox(width: 16),
            Expanded(child: FilterBtnWidget())
          ],
        ),
      ),
    );
  }
}
