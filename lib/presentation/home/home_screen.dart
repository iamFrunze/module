import 'package:flutter/material.dart';
import 'package:module/presentation/home/widgets/dropdown/dropdown_widgets.dart';
import 'package:module/presentation/home/widgets/list/list_widget.dart';
import 'package:module/presentation/home/widgets/top_buttons/top_buttons_widget.dart';
import 'package:module/presentation/widgets/appbar_widget.dart';

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
          children: const [
            TopButtonsWidget(),
            SizedBox(height: 8),
            DropdownWidgets(),
            SizedBox(height: 8),
            ListWidget(),
          ],
        ),
      ),
    );
  }
}
