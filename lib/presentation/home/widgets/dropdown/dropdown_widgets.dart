import 'package:flutter/material.dart';
import 'package:module/presentation/home/widgets/dropdown/search/search_widget.dart';
import 'package:module/presentation/home/widgets/dropdown/sort/sort_widget.dart';
import 'package:module/presentation/widgets/sliver_appbar_delegate.dart';

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
    return SliverPersistentHeader(
      floating: true,
      pinned: true,
      delegate: SliverAppBarDelegate(
        minHeight: 70,
        maxHeight: 70,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 1,
              ),
            ),
          ),
          child: Row(
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
          ),
        ),
      ),
    );
  }
}
