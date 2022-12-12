import 'package:flutter/material.dart';
import 'package:module/presentation/home/widgets/filter_btn_widget.dart';
import 'package:module/presentation/home/widgets/new_project_btn_widget.dart';
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
      body: ListView(
        children: const [
          _TopButtonsWidget(),
        ],
      ),
    );
  }
}

class _TopButtonsWidget extends StatelessWidget {
  const _TopButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: const [
          Expanded(flex: 2, child: NewProjectBtnWidget()),
          SizedBox(width: 16),
          FilterBtnWidget()
        ],
      ),
    );
  }
}
