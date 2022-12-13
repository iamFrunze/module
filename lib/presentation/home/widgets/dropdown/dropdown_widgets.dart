import 'package:flutter/material.dart';
import 'package:module/presentation/home/widgets/dropdown/search/search_widget.dart';
import 'package:module/presentation/home/widgets/dropdown/sort/sort_widget.dart';

/// Выподающие списки сортировки и поиска
class DropdownWidgets extends StatefulWidget {
  const DropdownWidgets({Key? key}) : super(key: key);

  @override
  State<DropdownWidgets> createState() => _DropdownWidgetsState();
}

class _DropdownWidgetsState extends State<DropdownWidgets> {
  bool isVisibleSearchBar = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
            visible: !isVisibleSearchBar,
            child: const Expanded(child: DropdownSortButtonWidget())),
        IconButton(
          onPressed: () =>
              setState(() => isVisibleSearchBar = !isVisibleSearchBar),
          icon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        Visibility(
          visible: isVisibleSearchBar,
          child: const Expanded(child: SearchWidget()),
        ),
      ],
    );
  }
}
