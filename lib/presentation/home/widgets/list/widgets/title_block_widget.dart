import 'package:flutter/material.dart';

class TitleBlockWidget extends StatelessWidget {
  final String title;

  const TitleBlockWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
