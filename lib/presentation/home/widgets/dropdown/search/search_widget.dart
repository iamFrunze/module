import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:module/ui_utils/mock_data.dart';

/// Поиск
class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownSearch<String>(
      popupProps: PopupProps.menu(
        showSearchBox: true,
        searchFieldProps: TextFieldProps(
          cursorColor: Colors.black,
          autofocus: true,
          decoration: InputDecoration(
            fillColor: theme.colorScheme.primary,
            filled: true,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
      items: MockData.mockSearchList.map((e) => e.toUpperCase()).toList(),
      dropdownButtonProps: const DropdownButtonProps(isVisible: false),
      clearButtonProps: const ClearButtonProps(isVisible: true),

      /// шапка поиска
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          filled: true,
          fillColor: theme.colorScheme.primary,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
      onChanged: print,
    );
  }
}
