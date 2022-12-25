import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/l10n/locale_keys.g.dart';

class SubtitleBlockWidget extends StatelessWidget {
  final int numberContract;
  final int numberCrm;
  final String date;
  final String personName;

  const SubtitleBlockWidget({
    Key? key,
    required this.numberContract,
    required this.numberCrm,
    required this.date,
    required this.personName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(LocaleKeys.contract.tr(args: ['$numberContract'])),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              height: 11,
              width: 2,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            Text(LocaleKeys.crm.tr(args: ['$numberCrm'])),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(date),
            const SizedBox(width: 8),
            Text(personName),
          ],
        )
      ],
    );
  }
}
