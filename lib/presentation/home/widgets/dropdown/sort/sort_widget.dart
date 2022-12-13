import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/ui_utils/app_assets.dart';
import 'package:module/ui_utils/app_strings.dart';

/// Сортировка по дате
class DropdownSortButtonWidget extends StatelessWidget {
  const DropdownSortButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      items: AppStrings.sortList,
      onChanged: print,
      popupProps: PopupProps.menu(
        itemBuilder: (ctx, text, _) => Container(
          margin: const EdgeInsets.all(16),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ),
        fit: FlexFit.loose,
      ),
      dropdownButtonProps: const DropdownButtonProps(isVisible: false),
      dropdownDecoratorProps: DropDownDecoratorProps(
        baseStyle: TextStyle(
          fontSize: 12,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        dropdownSearchDecoration: InputDecoration(
          icon: SvgPicture.asset(AppAssets.sort),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
      selectedItem: AppStrings.sortList.first,
    );
  }
}
