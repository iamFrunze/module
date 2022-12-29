import 'package:flutter/material.dart';
import 'package:module_textfield/module_textfield.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;

  const TextFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.controller,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final focusNode = FocusNode();

  TextAlign textFieldAlign = TextAlign.right;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ModuleTextField(
      icon: const Text('RX'),
      iconBackgroundColor: theme.primaryColor,
      labelText: widget.labelText.toUpperCase(),
      labelStyle: theme.textTheme.labelMedium,
      borderColor: theme.primaryColor,
      fillColor: theme.primaryColor,
      inputTextStyle: theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      suffixTextStyle: theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 44,
      ),
      textEditingController: widget.controller,
      textInputType: TextInputType.number,
    );
  }
}
