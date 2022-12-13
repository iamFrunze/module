import 'package:flutter/material.dart';

class TitlePageWidget extends StatelessWidget {
  final String title;

  const TitlePageWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            letterSpacing: 0.1,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}
