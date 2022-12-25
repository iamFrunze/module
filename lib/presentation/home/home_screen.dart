import 'package:flutter/material.dart';
import 'package:module/presentation/home/home_screen_controller.dart';
import 'package:module/presentation/home/widgets/dropdown/dropdown_widgets.dart';
import 'package:module/presentation/home/widgets/filter_bottom_sheet/filter_bottom_sheet_widget.dart';
import 'package:module/presentation/home/widgets/list/list_widget.dart';
import 'package:module/presentation/home/widgets/top_buttons/top_buttons_widget.dart';
import 'package:module/presentation/widgets/appbar_widget.dart';
import 'package:module/ui_utils/platform_type.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const TopButtonsWidget(),
            const SizedBox(height: 8),
            const DropdownWidgets(),
            const SizedBox(height: 8),
            LayoutBuilder(
              builder: (context, viewPort) {
                final platformType = context
                    .read<HomeScreenController>()
                    .listenPlatformType(context);
                final isVisibleFilter =
                    context.watch<HomeScreenController>().isVisibleFilter;
                if (platformType == PlatformType.desktop) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 3,
                        child: ListWidget(),
                      ),
                      Visibility(
                        visible: isVisibleFilter,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: const FilterBottomSheet(),
                        ),
                      ),
                    ],
                  );
                } else {
                  return const ListWidget();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
