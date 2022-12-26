import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module/presentation/home/home_screen_controller.dart';
import 'package:module/ui_utils/app_config.dart';
import 'package:provider/provider.dart';

class FilterDropdownWidget extends StatelessWidget {
  final String leftWidget;
  final bool isTextLeftWidget;
  final String rightWidget;
  final bool isCalendar;
  final List<String>? dropDownItems;

  const FilterDropdownWidget({
    Key? key,
    required this.leftWidget,
    required this.rightWidget,
    this.isTextLeftWidget = false,
    this.isCalendar = false,
    this.dropDownItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final containerLeftWidget = isTextLeftWidget
        ? Text(
            leftWidget.toUpperCase(),
            style: Theme.of(context).textTheme.labelMedium,
          )
        : SvgPicture.asset(leftWidget);

    return Row(
      children: [
        containerLeftWidget,
        const SizedBox(width: 24),
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              color: Theme.of(context).primaryColor,
            ),
            child: _FilterDropDownWidget(
              isCalendar: isCalendar,
              nameWidget: rightWidget,
              items: dropDownItems,
            ),
          ),
        ),
      ],
    );
  }
}

class _FilterDropDownWidget extends StatefulWidget {
  final bool isCalendar;
  final String nameWidget;
  final List<String>? items;

  const _FilterDropDownWidget({
    Key? key,
    required this.nameWidget,
    required this.isCalendar,
    this.items,
  }) : super(key: key);

  @override
  State<_FilterDropDownWidget> createState() => _FilterDropDownWidgetState();
}

class _FilterDropDownWidgetState extends State<_FilterDropDownWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final provider = context.read<HomeScreenController>();
    final date = context.watch<HomeScreenController>().date;

    return widget.isCalendar
        ? InkWell(
            onTap: () async {
              final picked = await showDateRangePicker(
                context: context,
                firstDate: AppConfig.kFirstDay,
                lastDate: AppConfig.kLastDay,
                initialEntryMode: DatePickerEntryMode.calendarOnly,
                builder: (context, child) {
                  return Theme(
                    data: ThemeData(primarySwatch: Colors.blueGrey),
                    child: child!,
                  );
                },
              );
              provider.setupDate(picked);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date.toUpperCase(),
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                    child: IconButton(
                      onPressed: () {
                        provider.setupDate(null);
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ),
                ],
              ),
            ),
          )
        : DropdownSearch<String>(
            selectedItem: widget.nameWidget.toUpperCase(),
            popupProps: PopupProps.menu(
              fit: FlexFit.loose,
              itemBuilder: (context, text, _) {
                return Container(
                  margin: const EdgeInsets.all(16),
                  child: Text(
                    text,
                    style: theme.textTheme.labelMedium,
                  ),
                );
              },
            ),
            items: widget.items ?? [],
            clearButtonProps: const ClearButtonProps(isVisible: true),

            /// шапка поиска
            dropdownDecoratorProps: DropDownDecoratorProps(
              baseStyle: theme.textTheme.labelMedium,
              dropdownSearchDecoration: InputDecoration(
                filled: true,
                fillColor: theme.colorScheme.secondaryContainer,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            onChanged: print,
          );
  }
}
